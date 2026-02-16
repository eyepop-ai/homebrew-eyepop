class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4/eyepop-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "63f7c91a1ff7a1abd0bf1639588354613b15bacd7ad673a11b460a764770a4e4"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4/eyepop-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "18f1bebebbb6f9822f416879d174fd29e6e71c735db2713b25d94c6f26984e1f"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
