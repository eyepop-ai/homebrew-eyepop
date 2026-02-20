class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.13/eyepop-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "b547350cbc202046abbd9f630792017d3f488284c831533224238b3091fdb213"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.13/eyepop-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "4ed381aa14360c12309b96ba56541ab0fc50e58af6d6686ec6a894650dbfa466"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
