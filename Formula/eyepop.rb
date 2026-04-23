class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.1/eyepop-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "1078d5f4407315baf77beca4a2a20335e120e0e8abfd6b9eb649c936beb237dc"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.1/eyepop-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "fc2bd4b3f705dc476e1ff6e21d9b83e2d6f164bf2e4d64a1474bb582253de4ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.1/eyepop-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fd12500f0278274c53ae5a9d18a3b6b14262ee645c9fdb9a8d3ee64f7ae5c71"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.1/eyepop-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "883921d55dde86681f4e3c4bd9b1da15c9d767ac61617ed32680f15c2d35a339"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
