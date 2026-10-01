class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.0/eyepop-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "f0f9b62b9a394f51a72fb52e5c8a19b64c4bd5353c9fca8d873c669737708df4"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.0/eyepop-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "a49b33389bdfed76315ac2c2e9f48fea2cb40a68d8ab75ecc183ef3ef43f013a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.0/eyepop-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "184fa02bf239f1a0229737be65ccc065ca70b29db43d144da99ec5006b5fc17d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.23.0/eyepop-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "461cc187cb73a7dbb539c81a84b103ce5c132ea892a66acf3be89f00faf85e57"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
