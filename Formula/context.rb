class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.3.1/context_darwin_arm64.tar.gz"
      sha256 "8c1b63db501cbeee4e74bec645ebf8b0ad90553c479178f9dd960fcbfc1b83ba"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.3.1/context_darwin_amd64.tar.gz"
      sha256 "f1527a4a68309a1fc48d9b724354c116392af6e7ceb5b9b0ebbf21def349e50a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.3.1/context_linux_arm64.tar.gz"
      sha256 "cd1413c06f55f85e05109a0de7e02b16e0f51938ac023f600e42e4d4bffaaf70"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.3.1/context_linux_amd64.tar.gz"
      sha256 "f08cfb2b8668b33320a11d8af3c72b9acd12ee3dd1f2091d01e710ad18f5ba0d"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
