class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.14/eyepop-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "627ad1894cdc698bce46bb0f17a53e1936801bc3eeba716cc2a43372bf17a1d9"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.14/eyepop-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "2d67692d8079e293cdaeea8e2bc404dd1c1c9e41f80350e4fd7eec43f83e59eb"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
