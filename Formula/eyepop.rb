class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.3/eyepop-v0.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "4ffa12b91e49e054ae32f6d7817480a36d3ec545509466f047c67ca6b9a51939"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.3/eyepop-v0.16.3-x86_64-apple-darwin.tar.gz"
      sha256 "2086f4744bd7082bd8c64116f6ddfd72e7e963ee78a84ca27bb1b3c6a153d0f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.3/eyepop-v0.16.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c062b116c3cc8410c93219df78ede790b6e8cffbd677ca11bdceeeefafa6284"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.3/eyepop-v0.16.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc84c8373026c74755238192eb325169637121c2913eedd782c27f2fa204a68e"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
