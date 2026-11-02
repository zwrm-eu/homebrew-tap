class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.6/zwrm-darwin-arm64"
      sha256 "fa9d3a497ac6cb6b831836178a08152b73562da0ed760cc92dc20e7283aa97da"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.6/zwrm-darwin-amd64"
      sha256 "f746be72ee4627c4e126021bf7d8b9a9d2dac2498417bff03de08803f9bccea5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.6/zwrm-linux-arm64"
      sha256 "50891a5e01eefc90d0d3f3e0866b92f62f381be0aa6fda995f0c8b451970b124"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.6/zwrm-linux-amd64"
      sha256 "768d489fde22290ac4a1419b9e777f21e5c04237d16f5766171d1456761399b1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
