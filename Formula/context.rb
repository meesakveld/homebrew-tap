class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.2.0/context_darwin_arm64.tar.gz"
      sha256 "40c6c5119f87b2ae4868b9eb9ab561dd3d04da2abf6a7dfb873631b13c469e54"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.2.0/context_darwin_amd64.tar.gz"
      sha256 "9c9028f959950e9cc58acc69672fb2a404c2c56f4723b531ac5fe3c5b71cb687"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.2.0/context_linux_arm64.tar.gz"
      sha256 "ee41dce16b6f987bfdf300f97096d34bdf4ddbfbb8888ee2cda37e005270feb5"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.2.0/context_linux_amd64.tar.gz"
      sha256 "eccbc9e515088cc3d07b3f7166eeb38d612efc59f5543a63d157d04e8b9d4f54"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
