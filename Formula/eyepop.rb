class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.11/eyepop-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "5225b215a7814ac0f1a9b0ca0f0f85b99cf2c92777344029d04c81621a5ff81f"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.11/eyepop-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "01d73cd754218b1973b150277d58d2192fb1d74363ec519f6ec8c781c8abf8ed"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
