class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.2/context_darwin_arm64.tar.gz"
      sha256 "a5d350b9539b90bed73d87ac6ada356bbba576427bc8d919388c112b4f70d9b4"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.2/context_darwin_amd64.tar.gz"
      sha256 "cbf6ae44433acf60b6d06cb0923cc2cabbb250658c811856c38c7a658ffdf4d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.1.2/context_linux_arm64.tar.gz"
      sha256 "69d7eb393f47322c9725dd2d54273c44d4e98920b634e950af7cdbe195ababf8"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.1.2/context_linux_amd64.tar.gz"
      sha256 "6882bd5a0f2545695be082041740c2a3c8baa8c0e289f2d8ce674d64d02def6d"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
