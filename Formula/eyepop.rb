class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.12/eyepop-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "b3025a64343ea422c7030eaa9de7d7c8ffd7e2dcc4d3d0655a00803d928ae537"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.12/eyepop-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "3a4c9287d140f2470b5d067b7a2e4502e22aa0c9f83ce7a57c412d18a2cc27f5"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
