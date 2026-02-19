class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.8/eyepop-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "bcfdeb48d73dcac093c9a304859415a213cef53e3978fb29e52532fb11d0884a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.8/eyepop-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "4f459a15368c35712d7b7a934d8d1b178a23afbaeeff7585a3d6d732a45195a9"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
