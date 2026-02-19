class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.9/eyepop-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "9d611b4607c6c3ed14c4343a523e7bffc6885b94cd3efdf6dcc3854fd1149b67"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.9/eyepop-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "18b3c0eb85b2600b5f021b97b8a0c96b2d373a0cb4175a64636efe1b841a81e3"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
