class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.4/eyepop-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "b81e7527d21f8b63fba570561f3dfd6e4966fbcfd37013d5fd6e3eadbbdac60e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.4/eyepop-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "47a710a5c8df837698ce730d7a00f7be25761c49415c372c886c66226ef50601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.4/eyepop-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51f42d735e85bfdc6aec5e9bd8a4c9f1b41d5941a68b31f55c1ac76ab49dff3a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.4/eyepop-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0190c93768650f1058f6a4cb2ff612581d5e15ed4dfe6921a7c620f4d12ad4cc"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
