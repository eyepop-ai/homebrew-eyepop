class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.0/eyepop-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "a800218d71f9a473b3f43983da8278aa70b2545e3c86b3cd1af824f31c26abc6"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.0/eyepop-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe528dd714f21625cba3035fa257af9bb63213a4c5d35663ee328714f788d1af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.0/eyepop-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c67f0458c14470e76c9565df55169a73de80a65b2fb769ac8f629c93f0c5f04"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.0/eyepop-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a5204e1dafc86ac95cf452321f119018be7ca399985fbbb2daf4962cf681cad"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
