class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.3.0/context_darwin_arm64.tar.gz"
      sha256 "8a2d86eb0677762b64641e898de9d30964926e841abbd9405a22f39359533ed3"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.3.0/context_darwin_amd64.tar.gz"
      sha256 "21188b2e87fda61bd9e9658416a8b14b9d2677d9fe2cae72cceb2bc537dcc00f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.3.0/context_linux_arm64.tar.gz"
      sha256 "5402a0fae4964908bc486a1366515cd55ad9b0d347c5f9c1f4bc5a18312580f5"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.3.0/context_linux_amd64.tar.gz"
      sha256 "262d48f86734bbd53c396d600e9e8794af1a2e2d360ac76ef0eb0c9c2c0bb69a"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
