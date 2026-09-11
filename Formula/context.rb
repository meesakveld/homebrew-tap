class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.5/context_darwin_arm64.tar.gz"
      sha256 "d71b0e12c7e9ffe4ab44100086af5951db9ecc7824db3ed54ceeca6d30222b31"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.5/context_darwin_amd64.tar.gz"
      sha256 "c3ff1a48fca4e5226f56f2498dd5f497c97a6c2b62d48393376b0df3a22f2082"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.5/context_linux_arm64.tar.gz"
      sha256 "6fad6ce749aec1dedb5d0ea911e9f84fd2c0eda8152e4234390b4d15c00442d7"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.5/context_linux_amd64.tar.gz"
      sha256 "46c14cc589d064936c68f85bbc7f8b50630e114f3bb85934370ccdf318f9a960"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
