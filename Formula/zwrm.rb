class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.21/zwrm-darwin-arm64"
      sha256 "86ece8bfd5d108874615ed2bedb75617d76bc648ca9613a9245a1a98d8fdaa6d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.21/zwrm-darwin-amd64"
      sha256 "bdfc4080a3ccb805a6ec01a0b2ff74be8108638044af480bc73f43611117885f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.21/zwrm-linux-arm64"
      sha256 "0e40f59c45d943341bc9e7b2c2ab61592778c3d0cbe1b05f675e00816ceaeeca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.21/zwrm-linux-amd64"
      sha256 "e9825f17e7ee5105444954644d4d64f9f360f64c9a6f9e000510e4f7cb785ee8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
