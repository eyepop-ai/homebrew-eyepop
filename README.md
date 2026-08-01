# EyePop CLI

`eyepop` is the command-line interface for the EyePop platform. Authenticate,
browse your datasets and abilities, run inference, and stand up compute — from a
terminal.

There are two ways to get compute:

- **Sandbox runs** — `eyepop run` spins up a session for a single run and lets it
  go when the run finishes. Nothing to manage, nothing to clean up. Use this
  while you are still deciding what to run.
- **Persistent sessions** — `eyepop create deployment` stands up compute that
  stays warm behind a stable endpoint, so your app skips startup cost on every
  request. Use this for anything real. See
  [Persistent Sessions](#persistent-sessions).

Once a deployment exists, the SDKs send work to it directly:

- Python — https://github.com/eyepop-ai/eyepop-sdk-python
- Node / TypeScript — https://github.com/eyepop-ai/eyepop-sdk-node

## Install

### Homebrew

```bash
brew tap eyepop-ai/eyepop
brew trust eyepop-ai/eyepop
brew install eyepop
```

`brew trust` lets Homebrew load formulae from the EyePop tap
([why](https://docs.brew.sh/Tap-Trust)).

Update with `brew upgrade eyepop` or `eyepop update`.

### Direct binary

Review the installer before running it:
https://github.com/eyepop-ai/homebrew-eyepop/blob/main/install.sh

```bash
curl -fsSL https://raw.githubusercontent.com/eyepop-ai/homebrew-eyepop/main/install.sh | sh
```

Or with `wget`:

```bash
wget -qO- https://raw.githubusercontent.com/eyepop-ai/homebrew-eyepop/main/install.sh | sh
```

Set `EYEPOP_INSTALL_DIR` to choose the install directory, or `EYEPOP_VERSION` to
pin a release. Re-run the installer to update. Release archives:
https://github.com/eyepop-ai/homebrew-eyepop/releases/latest

## Sign in

```bash
eyepop auth login     # opens your browser
eyepop auth status
eyepop get accounts
```

## Sandbox runs

Every `eyepop run` creates a session, runs your media through it, prints the
results, and lets the session go. There is nothing left behind to manage.

```bash
# Interactive: pick a model, pick media, run
eyepop tui

# Run a built-in Pop
eyepop run pop:person-counter photo.jpg

# Run a published ability
eyepop run eyepop.person:latest photo.jpg

# Ask a VLM about an image
eyepop run vlm:qwen3 photo.jpg --prompt "Describe this image"

# A whole directory, recursively
eyepop run pop:person-counter ./images -r --concurrency 8
```

Each run pays session startup cost. That is fine while you iterate, and wrong for
production traffic — when the pipeline stops changing, promote it to a persistent
session.

## Persistent sessions

> **Beta.** Persistent sessions are available now and still changing. Flags and
> output may shift between releases.

A **deployment** is a persistent session. Same compute, except it stays up: a
stable session UUID and endpoint, replicas kept warm so requests skip startup
cost, alive until it goes idle past its TTL or you delete it.

### Create one

Pick exactly one of `--ability`, `--ability-uuid`, `--pop`, or `--pop-uuid`.

```bash
# From a published ability
eyepop create deployment --ability eyepop.person:latest --display-name prod-person

# From a pipeline definition on disk (JSON or YAML)
eyepop create deployment --pop ./pop.json --display-name prod-pipeline

# From an existing Pop
eyepop create deployment --pop-uuid <pop_uuid> --display-name prod-pipeline
```

A `pop.json` lists the components the pipeline runs, in order:

```json
{
  "components": [
    { "type": "inference", "ability": "eyepop.person:latest" },
    { "type": "inference", "ability": "eyepop.vehicle:latest" }
  ]
}
```

`--ability <alias>` is shorthand for a single-component pop like that one. Use
`--pop` when the pipeline has more than one stage. `eyepop get pops <name>`
prints any built-in Pop's pipeline if you want a shape to copy.

Other flags:

| Flag | What it does |
|---|---|
| `--display-name <name>` | Name shown in `eyepop get deployments` |
| `--agents-enable` | Enable agent mode (`--agents-enable=false` to disable) |
| `--dashboard` | Open the live session dashboard in your browser |
| `-c, --payload <file-or-json>` | Full request body (JSON/YAML); flags override its values |

### Wait for it to be ready

`create` prints the session UUID as soon as the deployment is accepted, but the
compute is still coming up behind it. Sending work too early fails with
`session not ready`. Check before you send:

```bash
eyepop get sessions <session_uuid>          # ready when session_status is pipeline_ok
eyepop get sessions <session_uuid> --json   # for scripts
```

Progress goes to stderr and the UUID to stdout, so
`UUID=$(eyepop create deployment ...)` works in a script.

### Look at it

```bash
eyepop get deployments             # UUID, name, status, replicas, GPU, uptime, endpoint
eyepop get deployments <uuid>      # one deployment in detail
eyepop get deployments --json
```

### Send work to it

```bash
eyepop run session:<session_uuid> photo.jpg
eyepop run session:prod-person ./images -r
```

The session is already warm, so there is no startup cost per call. A UUID prefix
or the display name both work.

### Change what it runs

`patch deployment` updates a live deployment in place. The session UUID and
endpoint do not change, so clients pointed at it keep working.

```bash
# Swap the pipeline
eyepop patch deployment <session_uuid> --pop ./pop-v2.json

# Swap to a different ability
eyepop patch deployment <session_uuid> --ability eyepop.person:v2
```

Run one request through it afterwards to confirm the new pipeline is live.

The same command handles capacity, lifetime, and naming:

```bash
# Keep two replicas warm, burst to ten
eyepop patch deployment <session_uuid> --min-replicas 2 --max-replicas 10

# Shut down after an hour idle
eyepop patch deployment <session_uuid> --ttl 3600

# Rename
eyepop patch deployment <session_uuid> --display-name prod-person-v2
```

Every field is optional and only what you set is sent, but the request must carry
at least one. `patch` waits for the deployment to come back up; pass `--no-wait`
to return immediately.

### Delete it

```bash
eyepop delete deployment <session_uuid>
eyepop delete deployment <session_uuid> -y   # skip the confirmation
```

A deployment bills for as long as it is up. Delete it when you are done, or give
it a `--ttl` so it retires itself.

### Use it from the SDKs

Pass the session UUID as `session_uuid` and the SDK sends work to your warm
deployment instead of starting its own session:

```python
from eyepop import EyePopSdk

async with EyePopSdk.async_worker(api_key=API_KEY, session_uuid="<session_uuid>") as endpoint:
    job = await endpoint.upload("photo.jpg")
    result = await job.predict()
```

```typescript
const endpoint = await EyePop.workerEndpoint({
  auth: { apiKey: API_KEY },
  sessionUuid: '<session_uuid>',
}).connect()
```

The pipeline a deployment runs is set on the deployment, not in the SDK call —
use `eyepop patch deployment` to change it.

## Everyday commands

```bash
eyepop get datasets                                   # also: abilities, pops, models, keys, usage
eyepop get datasets my-dataset
eyepop get assets --dataset my-dataset
eyepop search "vehicle"

eyepop create dataset --name my-dataset --media-path ./images -r
eyepop create ability --name my-detector --prompt "detect cars"
eyepop create key --name ci

eyepop delete dataset my-dataset
eyepop delete key eyp_abc1234
```

Evaluate an ability against a whole dataset:

```bash
eyepop run eyepop.person:latest dataset:my-dataset
eyepop get evals <request_id> --watch
```

The `get` verb is optional, so `eyepop datasets` and `eyepop get datasets` are
the same thing. Aliases: `ls`, `list`, `show`.

## Output and environment

Commands print styled tables by default. `--json` gives machine-readable output
on any command.

- `EYEPOP_API_KEY` — API key for inference and the deployment lifecycle
- `NO_COLOR` / `FORCE_COLOR` — turn styling off or force it on
- `EYEPOP_NO_UPDATE_CHECK=1` — skip the update check for one run

The CLI checks for a new release at most once a day and prints a one-line notice.
Change that with `eyepop config set update notify|auto|off`.
