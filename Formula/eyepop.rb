class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.1/eyepop-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "a1f88dd03eeb2884a530a1a32082e639634ababb3821a35291fefebe974289d0"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.1/eyepop-v0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "8ab16f7a3344e56e868ff20120b77077356cc7a54d7518fa01fde9c5c5e0fa7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.1/eyepop-v0.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ece122e213e01d2e340f5eb28376e4c13db2057e74d5d5d69c72b2922eecc049"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.26.1/eyepop-v0.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89ae606a06a5804b8a23a3300c26cb4b94317aaffee8caafa5b281e78898a38e"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
