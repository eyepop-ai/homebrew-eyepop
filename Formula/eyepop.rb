class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.2/eyepop-v0.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "9173cb6e420fc3042338c283a8cb1dc34fa900a8b6b778251358402154f99210"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.2/eyepop-v0.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "040a9a7c26e40a4addd1910b3c9c805a3caa6d7cd693a7796f48740328cf5321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.2/eyepop-v0.25.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dd69945323ca2fe887e24f0cdd1af9a24a8edb5f7e050be59d8bfb30dc708c9"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.25.2/eyepop-v0.25.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed67fc799c95628687e005b97a578d108a2a7bfc2b744d6609fad76c897ca101"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
