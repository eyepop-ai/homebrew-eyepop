class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.12.0/eyepop-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "52907f47a0c620f01cabe25fc71cde92c49f0c8b230563f1ad9ad3687a8368a6"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.12.0/eyepop-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "84c0e3ed1dc011fc7759cc9e33149103bf4decb8b50d1beb0e9155793727f5bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.12.0/eyepop-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c43b62eeaecb9fbb0cbe761051b46d1c3e4e0a4fde4d3230cf4ddb683dc7648"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.12.0/eyepop-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed495de870715ef072be6faa03f858c04bb09463fbde2ad14efd873b67bfbbf3"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
