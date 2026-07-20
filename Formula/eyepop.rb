class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.1/eyepop-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "c3e3f8ce5034e2a8612125e8a991b40dc60e79031a2abc925fc3876c011f37f3"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.1/eyepop-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e4ff25f149b0ab7b85740c185f0041510d7fbc99692a2ab7ba125d4a062f213"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.1/eyepop-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "709ff7ba7fc53db8490d7042c9419ced48996ea257abef9106256e4688b44a70"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.1/eyepop-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77e2f06aa7e161f0f6892b54b3e16d7b97a2339cfad00dd642ca5697decbedba"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
