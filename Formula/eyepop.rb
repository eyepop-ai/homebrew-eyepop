class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.7/eyepop-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "8f0e22aa7f3c69443ff6c2ae1319c8d4f030b2a82cead1be08f4fdb925bc0825"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.7/eyepop-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "bddfabd230ad03be67d77032a4c666334a26aa268152eafedb6d6dcb8a426690"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
