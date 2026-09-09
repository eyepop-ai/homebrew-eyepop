class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.1/eyepop-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c584c9707c370d05049d927f65b9c4d234d99ba534072fc1b834881e41ef0a7"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.1/eyepop-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "f6ec92b26860ab29081e2a7d65e5bb481195e708c814315c4909d7612886e876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.1/eyepop-v0.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30a17f4e14ce0952c7fb64595c822d41d1fef1aadde91248087b0ebf08b951db"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.1/eyepop-v0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b5a303115d327b170e9f8f4606d4f23697a56e08864bec1fb621507b531e742"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
