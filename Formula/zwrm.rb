class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.1/zwrm-darwin-arm64"
      sha256 "4d90f463a5683dc4f1376f648b5896ec9616f4e5254556a6a41acec095c19bed"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.1/zwrm-darwin-amd64"
      sha256 "328fb789025b8bef1109a3c910558a67ecb3a541ad024c73d3430978a91658f3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.1/zwrm-linux-arm64"
      sha256 "bf1708fa0140d692cdc72ddbe6b86df2ebdc10f1b7efb89a57442807ae7f63b4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.1/zwrm-linux-amd64"
      sha256 "5d0ab8a0350a970ea7be62974a8d349a6293886333a3cccd5b3682e5ba11b767"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
