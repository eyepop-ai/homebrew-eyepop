class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.8.0/eyepop-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "a15bcea4f6f6d0639dcb2d68f6b346a53375dc5febe4ddc8de00e03955ee1047"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.8.0/eyepop-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f587e27884dc240361785a408c8f434b2a000ee7fa405acd8efa327abad6182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.8.0/eyepop-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6285438313a4ca1a7e56a72fb263b3eca226d8f59cd8b85da93b7ca343a573da"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.8.0/eyepop-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afe524b784bb043b02288520a674db183100984b0f9446a676918593d95a9e1b"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
