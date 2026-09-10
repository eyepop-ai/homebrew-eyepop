class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.0/eyepop-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "287ce22afe1a7b9bdf47c229fd7beca10d9dc685f84fc478e44787eed6075e19"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.0/eyepop-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e860df95de971c8525bee6c5757983dd2bf3e3b0beb0c06c2846e9c3baba385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.0/eyepop-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dc348c067131529cf5d8e5f15dbf228728b79bcde50468a67184a10e1501c74"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.21.0/eyepop-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bf6a7cc09e64b11b2145e414d2b79070edc2d065a4ef98cfe927c32a4747f25"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
