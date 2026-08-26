class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.14.0/eyepop-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d300110a03d45c60ac3598de34cc97f8915ca65b2470cabe088800e474c1acd"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.14.0/eyepop-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "437bb7f9ad0a8c5413b5582428594726515b6d0132825fbed51ae79588e2024d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.14.0/eyepop-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f56aca51de8701f4d3c0172df1cb90724180c7d2926874a773058b80d0b258c"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.14.0/eyepop-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67b01eee2c16f7012ac5ab9083a3eaffa1bb2a1667283a65d647df12af606399"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
