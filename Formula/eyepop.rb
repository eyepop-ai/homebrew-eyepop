class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.18.0/eyepop-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "6190dcb40fb1c65deef023bfbf3163c0518246d76b150d72882111e15430f2d8"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.18.0/eyepop-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "0591e31fd89afcf07d9d9fee3db100257d9bdcd8964f5c102299382de30add83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.18.0/eyepop-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87fa421ecfd84e47f11302075e0c6d53cf06341ce39883037a7fd6c0635ab9b8"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.18.0/eyepop-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a0360035c537e19c86f0ad60c72d77ba2482243aa46c9e6eac340adb56ba600"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
