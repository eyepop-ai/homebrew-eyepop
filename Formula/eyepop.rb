class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.1/eyepop-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "db84a24f9393da008baee74a665a7b9b56eb8fb2044c5de08e80af518eedc9e2"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.1/eyepop-v0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "838aee7b001851db1d4801be96ac97730c773b0e8aa7e8941194c9aa865e1f3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.1/eyepop-v0.22.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a07dce403992578997bbbefb531d42ad67cde1c2ff91a92cb9b850ce70cd58ff"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.22.1/eyepop-v0.22.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93e0374f87e131b278f8236b9df933ecfb7876faaad0866494ae16bcce27eb6d"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
