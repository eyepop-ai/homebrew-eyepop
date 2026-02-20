class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.10/eyepop-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "8da2611097167d2718b0ec544b068d8d31817cfd62b2989c93ac61f732e2a93d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.10/eyepop-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "8f9000b1f833834027a1c1c1e9508def9155adb3be78e4c2a7ba5a3e0d2f38d9"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
