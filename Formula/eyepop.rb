class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.13.0/eyepop-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6b32cfc56123b544f9305f418d0a072cd5373b356ee26c9eb1803c0686667bf"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.13.0/eyepop-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd03d79ff76b6da9e1f8bfba2db38e5e2e957bc7278ad488bfdfdc41f48d6024"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.13.0/eyepop-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1a32470007cc45e9d4efd4a75ba33f1e8cf6bde000d99c2091b5685de552f8d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.13.0/eyepop-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25710e2accb66837f9d6eb2fbe27bb5eafb47ab023dfbb2209cf68ecdf70805a"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
