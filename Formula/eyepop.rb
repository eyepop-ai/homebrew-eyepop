class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.0/eyepop-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ae85800d0f3ab0b26d7ebd1520966e485c22474d48621e9c1a2f1311e63fe32"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.0/eyepop-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "302f74e7cee3afd50f7601c1bc4d40e6a5c557be5f69608fbcd68b09ae9bf897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.0/eyepop-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4dbecd20dd75829bce7524181fdf307585bc7d052a5170d393545bc62e36df3c"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.0/eyepop-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53ff9332a6ba22bbf5c24df4d5a8b998dc078d9e3346c235bcff661081693172"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
