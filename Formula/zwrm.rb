class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.8/zwrm-darwin-arm64"
      sha256 "ba36cd47b2d0095438bddf8b81f9e389076123db4cf45e1cafe9773e16a5f3f7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.8/zwrm-darwin-amd64"
      sha256 "cc1a2755397d8268bf08fbbbe48bed8849a08ef107a95200f50ce9ee3a91bddb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.8/zwrm-linux-arm64"
      sha256 "74ac6582ed8075e58a713726cf85f8d717af930d3c346bf1483e6293322d91c6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.8/zwrm-linux-amd64"
      sha256 "61d112a1602faf277d4616d52d8238a7102407eb777191cbcf3e73f6e3f3377a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
