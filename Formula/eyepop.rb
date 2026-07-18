class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.0/eyepop-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d98a15635bb82b678ba380926931bb586d9b56959d87d356eb330022af1ead1"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.0/eyepop-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e9ab4f6efd49ead6fbedfb69c0e73f8e56f0d16e19f2a169677a4d4b86188bc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.0/eyepop-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "630d7f74c5bf938159a124bd9af2160decb928d8038fe9863ca867d13a590637"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.2.0/eyepop-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0017be9330a716cfa76e01102f3eeac0534ac8488ce9de68498ec2913c7b4700"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
