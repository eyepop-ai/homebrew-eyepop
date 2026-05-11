class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.5/eyepop-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "cd15d1c7939074512ce024f5fbfbbe683eed59385463b17951f4e12ff84d3095"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.5/eyepop-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "4987245c193a9cebeb747d1a941cc23b0720c421978b3931a120d8b8472c25ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.5/eyepop-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d3c3efc40da8cd03c5904f71de4d2b3d601f3adeaaca5613aa5fc7461130918"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.1.5/eyepop-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e1f61cfdad26f07ceca1d6340eb1025af450ed0467a0d90786121bfc7180a1c"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
