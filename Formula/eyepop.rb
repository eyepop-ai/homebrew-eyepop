class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.24.0/eyepop-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "af8b1b0127816a0b7e21930bac8cb652813b1c960c51ced99ac4f4f4b76533a8"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.24.0/eyepop-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "0057f45c12dcc2980b224516a9200073cf673ddf1b0de32ab0f07c38d1c7383d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.24.0/eyepop-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41e5587c8bf9a6814e4253d0f7567b0e5e4143006f995b7e70b09945d1430831"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.24.0/eyepop-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce6a08723f66df151f07d21ebe91a8af015337537e521ab438f7a45dbcecc8b2"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
