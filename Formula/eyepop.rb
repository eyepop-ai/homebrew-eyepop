class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.3/eyepop-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "01cb8a641a25e476ed84ec78dd71a848419fe9350fb019c2d12ccffdb4c1f76f"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.3/eyepop-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "800c8a054a5e227a63cd5ba8249c241687891aa2fa11fe77973647c8964a9551"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.3/eyepop-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a87bd402850a279a0a612c6000748c961a5351083572af243592515e7b96a6d"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.3/eyepop-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b2a0490d84b5c23f853571b64425f9c42f5a34b36dbdae640b63e67aba74cf2"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
