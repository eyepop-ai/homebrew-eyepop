class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.0/eyepop-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "b74a20fe1ec6987f33e7d746e1f75c3f08ce4ac570690bdcae0f81646732956b"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.0/eyepop-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "23383f37229457a603716587848fd72ed0e9f4b6ae33b3ce0295be1f82021144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.0/eyepop-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e54ea429913ed3adc17b88032265496652d9d723b14f8102c2d56e8e2969a72a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.0/eyepop-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fac73cff3939bc465a773f14385983820dc10f9d4d490027a1406d89c8ac69be"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
