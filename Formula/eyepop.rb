class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.1/eyepop-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "f1d2a500cd2ff1ba88b6eb4fd70b4d5569186e25ec324097964317217f5434c6"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.1/eyepop-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "32d964c7b8eafb5b7ad82b0810c72d88220e7595f8ae87e5e524c23ff582c244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.1/eyepop-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93b9c77b2ca5b502795e06ebb2c3ebbffffbb9963c70c7bdba2aca1b167ccd66"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.11.1/eyepop-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23ee33901b955b6ebe4bec56e846aa3666c4b404cdb28573d16b4d71077a940b"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
