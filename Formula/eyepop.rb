class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.0/eyepop-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "04ad30b6832260ab3f82ddb12b38ee461d16524c2f732e7dda5aef47c04b4263"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.0/eyepop-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "e304bff6a4190080835bc94bfea96ecd72e5edb98c55d442ab194a9860944992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.0/eyepop-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dabfcb820d60ec32c4082b7e32aa8783f725add7ef8e5096c4e50bd22a1d3a9"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.15.0/eyepop-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9619c538e5602ab167436003f318b51b82a1a83a4754b2afc0dcb92c86d10371"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
