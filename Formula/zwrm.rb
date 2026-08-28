class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.7/zwrm-darwin-arm64"
      sha256 "ff5cabe099db2b6ddcf53eef2aba33730b6ffb266e319e513703222ae1fab26d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.7/zwrm-darwin-amd64"
      sha256 "9e87d4e64b806193be0fc00170245fb22942ea13e8ae1ee54c4d3f8f12c5a78e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.7/zwrm-linux-arm64"
      sha256 "637d20287a94f4840ccbdc0305485982a33c0d61fd64004bf334f0bde20bb170"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.7/zwrm-linux-amd64"
      sha256 "ea49e16cbe0925c8e50a3dff4724c5b70517845ef4d65221939e3425bc192c9a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
