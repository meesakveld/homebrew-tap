class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.0.0/context_darwin_arm64.tar.gz"
      sha256 "f5228998ebbddef803ae53f399cdf7945c7c45f31c4f5a3d28fc5a8f308e8295"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.0.0/context_darwin_amd64.tar.gz"
      sha256 "8c2f3c0dc47528131e384abefcfa47d9b2cfec9b0cfce3a4af605a5bd5012a81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.0.0/context_linux_arm64.tar.gz"
      sha256 "9142d48cd57cb286ca51eae2706ade2a926b837912ca2b3baa26b5e65aea3060"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.0.0/context_linux_amd64.tar.gz"
      sha256 "f00b3ac706f3c519e158888c7cdfe33fb9fe2d2d6545de72424524f5131e4531"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match "context v1.0.0", shell_output("#{bin}/context --version")
  end
end