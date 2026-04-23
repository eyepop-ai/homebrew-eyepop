class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.0/eyepop-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "121a12fa06e6fb9dee92c818c718333f0bdf57e849171195cf84a0b7ae042601"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.0/eyepop-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a9b3b5011b11c3feb6d1cb3404ddc97b200e39e7eddd512813eb4070443a9b6a"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
