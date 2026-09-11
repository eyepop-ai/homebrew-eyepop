class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.1/eyepop-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "65c176e9f675600e68b393cc9e5c9e756a3c09587a07b236fd629748c2dd7138"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.1/eyepop-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "b3de00c7a3634c085d806bb89e55069e4dd175c7b9ce55744e49bd3652039bdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.1/eyepop-v0.21.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24702036c705241ce4e4534106e722a4ed9ffc977fe3629749188e6e868ca22b"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.1/eyepop-v0.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86ed0331f4b219adb073ca73e9306a912f281c8044d03f28c256395b40382e42"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
