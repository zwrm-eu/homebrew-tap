class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.8/zwrm-darwin-arm64"
      sha256 "2f65abf662da443bb3eef96f55adbf8c1a998ab30d7077629642cdd5ed4a4cbb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.8/zwrm-darwin-amd64"
      sha256 "8ff922efbec2fdac5e83f363fa26c910d88a239c4eea8a23b101a5bc2999c86b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.8/zwrm-linux-arm64"
      sha256 "9daa8fcc0063fbf0b5ba4eb456e4f5aeee3e3fadc00c5dcb6ab5129160723322"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.8/zwrm-linux-amd64"
      sha256 "c96885e2d33cd1a02c4546646ae577a21f7a135e9be15cbbf267a05c2e51bee8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
