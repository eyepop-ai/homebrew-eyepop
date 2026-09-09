class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.0/eyepop-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6101ce8d0b3bb26dd6469889a221fc54522ef56834bd645626c19af6cec7f94"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.0/eyepop-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "72de464021aa14c92a3fa124f4c159d5b03e1b344dbf8d52c82027409a9e0467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.0/eyepop-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f707d50ac6ae346caedbd538f6e138563d042162f18d7d925adc9176314fb5a1"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.0/eyepop-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f31275e10aa2ab7240e6e0d6f843a731f84b64cfc24a8c1dccec31ae653fa303"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
