class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/eyepop-cli/releases/download/v0.0.1/eyepop-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "d4fc3502c6492f88d426d3840ee3cdafc6df50a3750e1a1ab3764192ed0c79c2"
    end
    on_intel do
      url "https://github.com/eyepop-ai/eyepop-cli/releases/download/v0.0.1/eyepop-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "e71ab3b45a87082a86ab1cbf082beef94504908c54e9ad0bb339869bad8c0c2e"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
