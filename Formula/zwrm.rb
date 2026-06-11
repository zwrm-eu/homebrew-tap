class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.11/zwrm-darwin-arm64"
      sha256 "c97459c5d1f2c50a9a7b4eb254b4e1ebb7fa71df81db597fcabc98a93e23cdb7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.11/zwrm-darwin-amd64"
      sha256 "1fbdde7b2a4d185d8dc29319db48792ae8ccb6ef17f969d5334942705f44e777"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.11/zwrm-linux-arm64"
      sha256 "9570117fea751260985be251d3bac96240a6bb00d0550b045c1882a3fb37d7d8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.11/zwrm-linux-amd64"
      sha256 "46c7a5a0eabb0bf56a3c4c5a3233e84f348b6085a0e24fc69658228727112f4f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
