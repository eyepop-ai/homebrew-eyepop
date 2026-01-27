class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.4-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4-beta.1/eyepop-v0.0.4-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc43caa59756fb22e4e0e90d0c8922efb34c3822b62c1db5bc225ff9820f9fe9"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4-beta.1/eyepop-v0.0.4-beta.1-x86_64-apple-darwin.tar.gz"
      sha256 "91a18000385c53f8cfc612230dd936cc1241ce5acff70e133b3d2db516fd6219"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
