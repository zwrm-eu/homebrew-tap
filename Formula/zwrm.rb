class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.19/zwrm-darwin-arm64"
      sha256 "667bfc26f3d935fff42eda401d8513fa7903047767e9292d25abba1a722bca40"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.19/zwrm-darwin-amd64"
      sha256 "8a47f028c3a448e6594a0f83fc4eba93ec92350efde7aa6dfc8e8b8860b295ac"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.19/zwrm-linux-arm64"
      sha256 "c235382fae8a4bb94e43db29ef2baeb6aaf5f883c53db280bcbe423368088306"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.19/zwrm-linux-amd64"
      sha256 "9830d53dc1b343e549e1fc79236db516d7186791865034d49b3901dc264cb8c8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
