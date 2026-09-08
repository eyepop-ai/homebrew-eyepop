class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.17.0/eyepop-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5671d849664664d7c80fbe71f46db607bf325e86713ca08a587d1c64ad2f34d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.17.0/eyepop-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae79632b569954862b096976f496a61d3ee4f267a70e0f3e93210078fc47cb39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.17.0/eyepop-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a249f7fed3400062b0cf7292d24785e3d431d4b87989827a87dfb4f67daf621"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.17.0/eyepop-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b0b7468a44c6ee99ed757fa032fd3edac85e0f8b69bba446b8cd73d42cd9dbf"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
