class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.16/eyepop-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "4b76d9f6253ee152c9c43fb18774c21a6cc56012ea6ed41377747cfd531eaf6e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.16/eyepop-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "a57ebf40ddeff8326bb830a98fc034d5a3dd13f8aa54ef2a1650f1ee12a38a25"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
