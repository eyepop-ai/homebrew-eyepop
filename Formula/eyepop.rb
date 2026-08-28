class Eyepop < Formula
  desc "CLI for interacting with the EyePop AI platform"
  homepage "https://eyepop.ai"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.0/eyepop-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b1bb32e1d2ff7256d2d22439bb40001625872af57118d444b0092b53ba87f30"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.0/eyepop-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "943e0ad6f38e2d74de310a40d5e30dc26e9e67b4b627152acb84384b82789774"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.0/eyepop-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23bbf2a539144270b4f0d31cb15432eb5a0749e8bb5b26d19d23b6a24759c658"
    end
    on_intel do
      url "https://github.com/eyepop-ai/homebrew-eyepop/releases/download/v0.16.0/eyepop-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eff6546724f6cbdfac2562a1644d507d17c1f9fb867fbabeb1a93fdf41748dcc"
    end
  end

  def install
    bin.install "eyepop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eyepop --version")
  end
end
