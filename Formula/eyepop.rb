class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.1/eyepop-v0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "3d9bca7c8e7868fd3ecf696a7ed56b22ed7f0026c0d299b1c65c90d809a82df3"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.1/eyepop-v0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "9350a0d6d55ffeeabb5ccdea19c7f8b5e582b51e8effc7f83f0b1510c7ea30c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.1/eyepop-v0.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6b13559f71fdb63eaed4914b6fda29bbbe7960c75a88171bb83cd093c92dc1e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.1/eyepop-v0.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a21249321761c3ea6504a699566cdff464fdaa3cd22645359e5962878a3f93dc"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
