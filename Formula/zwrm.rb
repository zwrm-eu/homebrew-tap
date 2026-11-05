class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.32/zwrm-darwin-arm64"
      sha256 "9dbf585dec292f42bc38767dc5bc7e68a18264b4c20649b02dee4ca722986bde"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.32/zwrm-darwin-amd64"
      sha256 "58dc587b1b0bf93369e02d89c1853196a901786819ce1c611718dcfaeaf85420"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.32/zwrm-linux-arm64"
      sha256 "161743ef9562beea45faf3663fe394753ae088378f19322a4f2c1ae6677b58c9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.32/zwrm-linux-amd64"
      sha256 "49192778b3a6b8f7e322acb2efa3a7e704e42844e938e44bffea573d79499192"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
