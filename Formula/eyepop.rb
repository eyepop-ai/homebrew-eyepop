class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.5.0/eyepop-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "26ae8d98f54c599804660fb1b39256fc00ee906f572fefe2a4d3372cd103d1f5"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.5.0/eyepop-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "6ed74f019331507fdb3b04004fe5ef8ace7e72ad5ef6af92e8646520a20c3a90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.5.0/eyepop-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85e3a176a11174a7304cf736d134bcd70047ce9fda62c3c2d645be0b5849bbde"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.5.0/eyepop-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ddd95de263c1e6ccb116c76c3daa1d726fc5b703bce403606df9eeadb7cbc92"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
