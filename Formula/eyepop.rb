class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.20.0/eyepop-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6f4ba95eb997e1e2d9077bd163008362fcedd9e3576431fb942296e783b7910"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.20.0/eyepop-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "c4f72fa6d4a787f040479feee66e83693eef2631e05ea4847057937d1383698d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.20.0/eyepop-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecb0c8eb2efba313c851c923ccfc682f890b78c26142669ed08f96d9da6d4d35"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.20.0/eyepop-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5aaf694d9620a8b63e7530d78ce542cf63ebe174379af6df391dc294b345dbe3"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
