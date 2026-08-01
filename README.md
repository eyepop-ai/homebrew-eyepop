# Homebrew Tap for EyePop CLI

This tap distributes the `eyepop` command-line interface for the EyePop platform.

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

## Documentation

Full CLI documentation: TODO — GitBook docs link
