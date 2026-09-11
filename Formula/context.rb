class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.3/context_darwin_arm64.tar.gz"
      sha256 "c0bfa2c6a32d76e29b4a17795f1b7d4a51eb51822c986d8ab8730ab0d40c48a5"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.3/context_darwin_amd64.tar.gz"
      sha256 "c5a080f38d053b6ddb3b907beb49e53a8100d7a617b85f1087913a7c7dc44e22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.3/context_linux_arm64.tar.gz"
      sha256 "d3bcee8a61259ab3e1ac59272542f2b42b1e3c633ed65ffd0f2c5407033af8e0"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.3/context_linux_amd64.tar.gz"
      sha256 "95ba25418cfbbd3ea47d495ae83cc4a4f393ca0460c5da9accc761dc0826c691"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
