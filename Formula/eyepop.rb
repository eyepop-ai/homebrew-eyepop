class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4/eyepop-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "f3d65984a8c4ce19c74c0d41c85dc7ad9c357decdbb91e67d1046278b4c55975"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.4/eyepop-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "7667c4d9267fcbf149450a34814398cdd5b0ecf0aaeabb7f1398bbbb58faa263"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
