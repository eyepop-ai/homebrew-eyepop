class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/eyepop-cli-preview/releases/download/v0.0.2/eyepop-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "b0cb428caf51df52b890a1b35a70889dd33b7524c15928d0732d51d30b91237e"
    end
    on_intel do
      url "https://github.com/eyepop-ai/eyepop-cli-preview/releases/download/v0.0.2/eyepop-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "6f5e6e8e4ce66447aed9f6977bd760a7327b2aa182cb0c5a7c1bd53b8f4726a0"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match "eyepop", shell_output("#{bin}/eyepop --version")
  end
end
