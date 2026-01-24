class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/eyepop-cli-preview/releases/download/v0.0.3/eyepop-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "7911ed25cd763c5cd45e321969c49632c6f397c6bb76cfe6ef5e85831075ad3d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/eyepop-cli-preview/releases/download/v0.0.3/eyepop-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "7c221f866d766d9bf534fc917fb3d22705736c7b2140feb13cf84996843a3a90"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
