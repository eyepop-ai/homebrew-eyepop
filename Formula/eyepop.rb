class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.1/eyepop-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "c067766237eaa64d4820e5d83a82a909c05502eff1e885e209d58bdea362133a"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.1/eyepop-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "250a43aaf1cc06968217fc2742edaec6f609f5147945e276068e8d20914d7249"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.1/eyepop-v0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb415e70df151a55f57f3cfb7cc72f695e8ea660f16b0c53aace0630fadc47f1"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.10.1/eyepop-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53f2c764891da3acf0ef6cf4e96c4c5b3b793f06863a99b5674a9ec969b28306"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
