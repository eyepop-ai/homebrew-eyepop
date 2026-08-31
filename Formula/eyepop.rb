class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.1/eyepop-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "cd73beafab4e34bb960cde7e906985b55134dabaa54a46d2847142a128b79c53"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.1/eyepop-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "45208c08af6bc6a072d496c61c52e9cc4394dc41fcd957f1ff989663dcbf1092"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.1/eyepop-v0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d4589e88c340b68a2947f616ed6ebf79a9d37bde1eba4e627127aa997c7abb8"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.1/eyepop-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ba76773b42673e4befb412aaa6ccbb7e4d817de020db5cda647287ac41c2e2a"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
