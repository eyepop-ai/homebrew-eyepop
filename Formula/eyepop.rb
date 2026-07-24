class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.4.0/eyepop-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6397bc0e936109cf8e0fef229ed860a4403c347363c363ebecf2c3676d6cd94d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.4.0/eyepop-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "12e3526294a95b546c9630f96e4795b8f41bb855a8c9a2327fd03bf5914756d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.4.0/eyepop-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8facef4cf863d719d592fb62349928f62aac12e63a1ff5e6c7d406283bff2f3"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.4.0/eyepop-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47e76b7862e9222a3c89fbca7cf4eb8de98955c12e35adfad36ed9296e898629"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
