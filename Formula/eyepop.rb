class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v1.0.0/eyepop-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "46f2d6d4322cad5ee4f0b62ad1a4a9026a4e615a2e402c7b129a87ce9224b899"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v1.0.0/eyepop-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "768dbde8d9b7f779875ed44957acafe869735657447250958e2a085796eba182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v1.0.0/eyepop-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5460007d94a8f4733788c1e9568607aa86367b6d7f00ae7d5c175f281eaa61a9"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v1.0.0/eyepop-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6aaf5a8c9bdd7e324f3d1683cefc6c4b39f2eb7d2e7e4f80d4acd8c2d287edd6"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
