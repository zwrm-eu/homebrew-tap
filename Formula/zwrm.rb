class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.15/zwrm-darwin-arm64"
      sha256 "1a08b90869924d51ec13ffead9acbfc379c0681604a686a3e45bee6dda1c5fa5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.15/zwrm-darwin-amd64"
      sha256 "f54aa700a6aac19a0e63a8be94742683d1c9cfabeb6e4e36e2f7fe9638697337"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.15/zwrm-linux-arm64"
      sha256 "00bcc1c45327afc8f030e89c823c86f1f9ac89dc3dbf719050650d624d606ced"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.15/zwrm-linux-amd64"
      sha256 "828d5a2a954451b879ce558f3f6e7dced71751dbdda7feee8136ac3dd724e0e1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
