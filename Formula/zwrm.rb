class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.12/zwrm-darwin-arm64"
      sha256 "15390bcd8200224e204ca57739d62ddcb0f759fe0b5d5bc698b120318cdae6b1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.12/zwrm-darwin-amd64"
      sha256 "b44afd7cb15ce2fa67aa44c92a4c58011f2d5c1cd79008c9d3b6991eca1e02a5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.12/zwrm-linux-arm64"
      sha256 "9d9dd8f6ee3c1317eea16187575b397c48fe4cde88c623506eeaa3cc9e21290e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.12/zwrm-linux-amd64"
      sha256 "ba85f3609a037da42df344bb380c3ddbec987a1cf2e846fda86430dfb2f988cb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
