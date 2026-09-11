class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.4/context_darwin_arm64.tar.gz"
      sha256 "cbe604622dd8755154f5b398b38d98b566c5113e0d78c71cdfda81a2f75dc1f8"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.4/context_darwin_amd64.tar.gz"
      sha256 "0712cdb7345ad663a170a32c207928b433f8766cc18a9f9edf7c95f40f622351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.4/context_linux_arm64.tar.gz"
      sha256 "cb3a7da914f040dfaa3e3a04f7c7c2b8bb8376c7a55eaed067db44e48c8b8f00"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.4/context_linux_amd64.tar.gz"
      sha256 "76fbe660ee60a3d181c0b099a8e304d33a60f92680654a9aaae8c5a76326c374"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
