class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.6/zwrm-darwin-arm64"
      sha256 "743eddb2e3db76639413f1cb84d0506cb375597e7a1f138f3c458a6da2e12413"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.6/zwrm-darwin-amd64"
      sha256 "ce83328d6024f91f51603f4003fd6774e99210db08254bc1d3ad9429e4a38c4d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.6/zwrm-linux-arm64"
      sha256 "2247fe1a3c93bad4ce3a184fb0e1a86c53e01d5546096b9d819e3ea0e4935363"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.6/zwrm-linux-amd64"
      sha256 "daae1c9e2cbc626d142bc0336bedbacf657a0561a7c4a8d6e9a1f8c93ad06403"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
