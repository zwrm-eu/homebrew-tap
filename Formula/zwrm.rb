class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.0/zwrm-darwin-arm64"
      sha256 "2f530ba622308bd5fdafb207a3d6a1a39105941a5425c0af674c07e00d7b41e6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.0/zwrm-darwin-amd64"
      sha256 "ff65a5a864cac84498e99d91e27d748a7b41da43494e4faa2b8fb0a3930a26ac"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.0/zwrm-linux-arm64"
      sha256 "f09940cef5239b38188c5205c0b4ade3ee447c05f082dee00ebffb82a1013af8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.0/zwrm-linux-amd64"
      sha256 "8acca30f417f432d18e0ef2c76cf53a03e6d611bb9270fca99fb711d60dfb180"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
