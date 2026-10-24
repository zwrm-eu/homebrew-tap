class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.17/zwrm-darwin-arm64"
      sha256 "f181b65ede0a4dee01111c7dfb40698beabc9fffdd8a8c6227e1cb6f37f5b1f6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.17/zwrm-darwin-amd64"
      sha256 "8aebed7bdbf00a9f17ed5bcfc11440c99bb6061ee220094631c5d5b7ae0ed36b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.17/zwrm-linux-arm64"
      sha256 "461124783ed3b9694c001c4114fa47ccadcb51ebdd0a1570e3e8d01a329b6459"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.17/zwrm-linux-amd64"
      sha256 "673bcc824d149716543a4d4ba8856ba9d8a7007d59c93f5ebbdf7db9d116524b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
