class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.0/eyepop-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb95997a72ed60d19d2b0ce7c0fee101e80dc4896bc704e578b37eea5c3d7cd3"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.0/eyepop-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "d248cbfd5a8aebf175b9bed3253169db61da98251be864813f816602bcd3e8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.0/eyepop-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4db911e2d9a4fd6b92d891843f797ec3acda9535f1da99d68cbfe9fb68c59415"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.0/eyepop-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99bd41647eee01fa3a55129930d6cb7d6b7048ae0c5e6f24387754a384721f1d"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
