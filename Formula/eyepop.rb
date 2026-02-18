class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.6/eyepop-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "b996873fc9886855b02ad8681e2324795149264017ae06fe927e2501d1467e51"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.0.6/eyepop-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "eb232bc629375ba3d2eb56bdef8c11d88c661762cf557e6040be52c515bd861b"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
