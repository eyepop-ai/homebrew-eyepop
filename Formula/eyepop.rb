class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.2/eyepop-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b9cf9b2e117036e411547e416acc6410593f2d1b8104ffe29eb2efb11abd915"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.2/eyepop-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "d54e54b4c2fcc0886cee2962b213944ec222baf15db7933b6653ec6396a9512e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.2/eyepop-v0.19.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4ff831dba2f18fbc6e191e28f769ca0e3a94180b32cd923a1e091592a9e654c"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.19.2/eyepop-v0.19.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c81b9d3b3821f0ea6fe36ea886c1c93bbc9c504515c529c0d73009ff7aae23f"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
