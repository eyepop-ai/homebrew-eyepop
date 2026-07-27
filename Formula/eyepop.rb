class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.6.0/eyepop-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "d264b035577f8f8a89199e57d8376bd3b73bf79e183781d93881e76734393897"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.6.0/eyepop-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "81510c39a20051b35825c6c957ffe226e5497bf964460563f5a68f8e343e1aed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.6.0/eyepop-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5bdc1f67e3e163dfceda443ff7bf1c1c14ef25a28821f704f27543e10fe1342a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.6.0/eyepop-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e085731a33acf108757b5d725dc85e497a9a69ac7126d51e2a03303e863df2c2"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
