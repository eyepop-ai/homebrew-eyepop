class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.15/eyepop-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "7357c8b9fb69652408fd28aeb8277c5b5781ee770e30a62404674b9b43ab5f2b"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.15/eyepop-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "5a28f9f772cf1f0a7890421efaa89face228c5b17c47aeb1a49aa6ef03ae8d34"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
