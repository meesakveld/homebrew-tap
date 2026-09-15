class Context < Formula
  desc "CLI for turning codebases into structured, AI-ready context"
  homepage "https://github.com/meesakveld/context"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.2.1/context_darwin_arm64.tar.gz"
      sha256 "86cffc61f728e2145403acc19e2663501399d23189628f50832d0786a4dd6526"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.2.1/context_darwin_amd64.tar.gz"
      sha256 "343eeb39dfc40d2b54a8e1af13998b438625963c7e7dc8990b8436bca4e346a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meesakveld/context/releases/download/v1.2.1/context_linux_arm64.tar.gz"
      sha256 "9cd94fb458fb9c8a70df497600b974798a0ea323f06673cb79a4d528a790c4b3"
    else
      url "https://github.com/meesakveld/context/releases/download/v1.2.1/context_linux_amd64.tar.gz"
      sha256 "60f9cd1a6845fc6187035ff8aa5ad16312139f80fc092efdbfb5dc9b413c9803"
    end
  end

  def install
    bin.install "context"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/context --version")
  end
end
