class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.21/zwrm-darwin-arm64"
      sha256 "11b2b21e9d29a7cd05f2efb45b554e7139efdd3ad87b2f86cf64e5b8418570d6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.21/zwrm-darwin-amd64"
      sha256 "ec1dcbf2ad30af0750b42745c1b57028a5edbcf8a8757531c52a1b8e81fd559b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.21/zwrm-linux-arm64"
      sha256 "0eb25bed8ebf72312bcda2b36b6f346c53115e77192b64df78a836b1900c2835"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.21/zwrm-linux-amd64"
      sha256 "254b118712478f997a3a07df89a237eb28618419f79c32649302fd4aca0dee46"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
