class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.5/eyepop-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "1124aa7c12e1a01558c93c5f66eb2ab7baae0bff128ea7c906fcfb6e2581ec91"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.5/eyepop-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "f333c045b9e3e403589788d99f7277f134f56c17763633eefa8c12c447df0597"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
