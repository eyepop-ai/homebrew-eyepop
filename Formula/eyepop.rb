class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.0/eyepop-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c13e8e146becca68627a697b47e4507d6f3bb098e54b130193292e3db072e735"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.0/eyepop-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0c4c1f75869347022077beb4374c8a46e96920abfc88d9bae504f97b3b75ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.0/eyepop-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13a92a5d5f1820bb3a0baf558fba10b0edd95f3b782eeb08db33e42821f02cc3"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.0/eyepop-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e14d860e2d623e74a968364491a5ae9d45db5f2e0f762a0f097474963da820e"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
