class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.0/eyepop-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "fdfbcdb7845243c2491454c93b6bc7e94768bfad6d4df1fa2d358668c86607ba"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.0/eyepop-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "3858a1629262e91c903766c34a7202f492626c2893b8632132cdd491e2d5a152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.0/eyepop-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dde645e43ef4397c4b9035d868804ee15109444cc2e091aa5da2f9c6a8043ac0"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.27.0/eyepop-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbf7154913d18165962b69ec3405774708ba93d0b77b4b98e5e1b9b4e28f93a2"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
