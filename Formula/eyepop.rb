class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.7.0/eyepop-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "03196ad68f485353e7c78690685a7164784db9f3ec1cfdd3bb4cb7e512ea6e8e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.7.0/eyepop-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "9122302aa5e403d29df0ae9d92e73cc2fc96b422d16f507da0663ed4d5fa20c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.7.0/eyepop-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59ff138c7392136a911126b718e6c56e79fc6286db6c8bcf6e5213813db2d874"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.7.0/eyepop-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd71e7424231a003effd6ce98af24f93eebd22c7e4adc5e9ea03bf10df4ece95"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
