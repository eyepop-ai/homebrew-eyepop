class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.2/eyepop-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "b3d34eb4668ff576dbf47e2bf50bed72ae956305138d5420d0e828ada42c4d7f"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.2/eyepop-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "9e7a0edc66e5661eaad40a6e763b21ab8d1422a3ca40e1b03b4161a7ad20acae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.2/eyepop-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c48e2c2a2feb89a6ca88e1826115da3f46724efedbc40cc60fe629a0840d197a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.3.2/eyepop-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce782aa38611083d7560a5c500460d0a5c9c9f45609f2e42581e2158e65de385"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
