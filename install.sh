#!/usr/bin/env sh
set -eu

repo="eyepop-ai/homebrew-eyepop"
version="${EYEPOP_VERSION:-latest}"

need() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "eyepop install requires $1." >&2
    exit 1
  fi
}

fetch() {
  url="$1"
  output="$2"

  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$url" -o "$output"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "$output" "$url"
  else
    echo "eyepop install requires curl or wget." >&2
    exit 1
  fi
}

fetch_stdout() {
  url="$1"

  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$url"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO- "$url"
  else
    echo "eyepop install requires curl or wget." >&2
    exit 1
  fi
}

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  elif command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$1" | awk '{print $1}'
  else
    echo "eyepop install requires sha256sum or shasum." >&2
    exit 1
  fi
}

is_homebrew_bin() {
  bin_path="$1"

  case "$bin_path" in
    /opt/homebrew/* | /home/linuxbrew/.linuxbrew/*)
      return 0
      ;;
    /usr/local/bin/*)
      link_target="$(readlink "$bin_path" 2>/dev/null || true)"
      case "$link_target" in
        ../Cellar/* | /usr/local/Cellar/*)
          return 0
          ;;
      esac
      ;;
  esac

  return 1
}

default_install_dir() {
  if command -v eyepop >/dev/null 2>&1; then
    existing="$(command -v eyepop)"

    if is_homebrew_bin "$existing"; then
      echo "$HOME/.local/bin"
    else
      echo "${existing%/*}"
    fi
  else
    echo "$HOME/.local/bin"
  fi
}

detect_target() {
  os="$(uname -s)"
  arch="$(uname -m)"

  case "$os:$arch" in
    Darwin:arm64 | Darwin:aarch64) echo "aarch64-apple-darwin" ;;
    Darwin:x86_64 | Darwin:amd64) echo "x86_64-apple-darwin" ;;
    Linux:arm64 | Linux:aarch64) echo "aarch64-unknown-linux-gnu" ;;
    Linux:x86_64 | Linux:amd64) echo "x86_64-unknown-linux-gnu" ;;
    *)
      echo "Unsupported platform: $os $arch" >&2
      echo "Download a release archive from https://github.com/$repo/releases/latest" >&2
      exit 1
      ;;
  esac
}

latest_tag() {
  fetch_stdout "https://api.github.com/repos/$repo/releases/latest" |
    sed -n 's/.*"tag_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' |
    head -n 1
}

release_asset_sha256() {
  fetch_stdout "https://api.github.com/repos/$repo/releases/tags/$version" |
    awk -v asset="$archive" '
      index($0, "\"name\": \"" asset "\"") { in_asset = 1 }
      in_asset && index($0, "\"name\": \"") && !index($0, "\"name\": \"" asset "\"") { exit }
      in_asset && /"digest":[[:space:]]*"sha256:/ {
        sub(/^.*"digest":[[:space:]]*"sha256:/, "")
        sub(/".*$/, "")
        print
        exit
      }
    '
}

verify_archive() {
  file="$1"
  expected_sha256="$(release_asset_sha256)"

  if [ -z "$expected_sha256" ]; then
    echo "Could not resolve SHA-256 digest for $archive." >&2
    exit 1
  fi

  actual_sha256="$(sha256_file "$file")"

  if [ "$actual_sha256" != "$expected_sha256" ]; then
    echo "SHA-256 verification failed for $archive." >&2
    echo "Expected: $expected_sha256" >&2
    echo "Actual:   $actual_sha256" >&2
    exit 1
  fi

  echo "Verified SHA-256 for $archive"
}

need awk
need tar
need mktemp
need install
need readlink

target="$(detect_target)"
install_dir="${EYEPOP_INSTALL_DIR:-$(default_install_dir)}"

if [ "$version" = "latest" ]; then
  version="$(latest_tag)"
fi

if [ -z "$version" ]; then
  echo "Could not resolve latest eyepop release." >&2
  exit 1
fi

archive="eyepop-$version-$target.tar.gz"
download_url="https://github.com/$repo/releases/download/$version/$archive"
tmpdir="$(mktemp -d)"

cleanup() {
  rm -rf "$tmpdir"
}
trap cleanup EXIT INT TERM

if [ -x "$install_dir/eyepop" ]; then
  current_version="$("$install_dir/eyepop" --version 2>/dev/null || true)"
  echo "Updating ${current_version:-existing eyepop} at $install_dir/eyepop to $version..."
else
  echo "Installing eyepop $version to $install_dir/eyepop..."
fi

fetch "$download_url" "$tmpdir/$archive"
verify_archive "$tmpdir/$archive"
tar -xzf "$tmpdir/$archive" -C "$tmpdir"

mkdir -p "$install_dir"
install -m 0755 "$tmpdir/eyepop" "$install_dir/eyepop"

echo "Installed eyepop $version to $install_dir/eyepop"

case ":$PATH:" in
  *":$install_dir:"*) ;;
  *)
    echo "$install_dir is not on PATH."
    echo "Add it to your shell profile or run: export PATH=\"$install_dir:\$PATH\""
    ;;
esac
