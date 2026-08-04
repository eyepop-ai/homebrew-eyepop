class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.9.0/eyepop-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "3da3790016387e362b76ab237a99e4eb104331aedf4d456abad86eea9be2f311"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.9.0/eyepop-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "7aa4e7a7ae4f322b98f4444fc0e722abbf4d200e87c896720053d0380eca46c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.9.0/eyepop-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08604d1aa7865bd16849044f4025e4dd1b277555aba773b7b19892954b092ea1"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.9.0/eyepop-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "541f72ecc96d75c34430a2c11d626c45fa89aa1f516978f4fd6d4ba3cb2a9e09"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
