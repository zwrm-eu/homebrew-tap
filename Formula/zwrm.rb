class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.4/zwrm-darwin-arm64"
      sha256 "caf1446918cad58204e4caf983f20b66f777d49cc6faf6d363976260e54d412a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.4/zwrm-darwin-amd64"
      sha256 "e990d3751e527987abde8166811508718e89df691dfa6dde87a81d30030e35d2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.4/zwrm-linux-arm64"
      sha256 "d82947ccc78dc952f7283865cc9a5bccdcda60fa7971f72cdb884a0d4668f528"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.4/zwrm-linux-amd64"
      sha256 "d3ab3cd61276b4160ac87246d5c56c7065bd0d23b503e702c3a01f3ca5ae43da"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
