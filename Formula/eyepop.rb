class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.1/eyepop-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "177409c3bf116be55b7f32ad117e965502d4c5b32d3b8f3bc61161a4492b7b94"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.1/eyepop-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "4cc5f3ced4253004aff89cd41b3b83c13ab4cf5451c1c531f98b10d5e52060b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.1/eyepop-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "333f189f0473a3df966c0ef06b085f87c710aba927bb52889f9f7220a321c8c0"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.1/eyepop-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebfe2234d4e4191a7619d312a6133dca100d95dc19ef264322b4a86a10af5452"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
