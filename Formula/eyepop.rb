class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.1/eyepop-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "35d4e1c61e28c12a490a91ece3d4a5576344b8c8325695b1977e36b45cf41108"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.1/eyepop-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "d2dbe0b547fcbb047291c81fe51390936bf7ddfcbd96a339fc0471d39a05d97e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.1/eyepop-v0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db8183ebd2247848dbc72503d8260b09eff6e93ae86d6e70576300b8563d2d5b"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.1/eyepop-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1450ff72d7f7e4ab4b576028abf553f9eab9affdb66e33e9bc2c63170ef7542"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
