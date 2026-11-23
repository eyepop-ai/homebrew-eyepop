class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.1/eyepop-v0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "ddb894d8c8d8132cbdf672b4a7fb0bca3c332c464cb52b2c3c34039a23915396"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.1/eyepop-v0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "ddd9c16d3e0aea39b0fc800abcac432a517b748e4f4b42b44ad10c409476998a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.1/eyepop-v0.27.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2648b20129b45abd389f9dc7efe46f4b516e5ac82a20a579931fef976c686e4"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.1/eyepop-v0.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c32fb989d0dbb2d342c1b6c6f75497c692b6e8839b9df19339d47724c65cf5f"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
