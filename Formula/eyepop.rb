class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.2/eyepop-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "a66431731b8868f57f9b69c677178eac15a6973b81ac68667a800cd9461c970f"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.2/eyepop-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "209fcf57eb3cc4ff883dfad939a9c936c7b833d7c70cd015b2408b23580546fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.2/eyepop-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef99ed0e865001c4e09832a297eb49c48f5f914f352e9be794c7bf4d6f04ba50"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.2/eyepop-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebb312a5a74b139b9325827563b2e9b5fb59c9a0fcb46d22bb75fd871e3ff9aa"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
