class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.1/eyepop-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "cb47dd4df0039082cb8a03814d71d08476328331cd320e462376b428f15df67c"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.1/eyepop-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "d641d2c98376f9b0b9239d56f8c2909a5271384ced2365254b1a387617409685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.1/eyepop-v0.25.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0edc145e797eb7a700b98d266b532c449824249e6960045517cd0f540a4c08e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.1/eyepop-v0.25.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9271b5611647d109fe756ca35b0e89ea3482632ccab25378a923632ebd5a7911"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
