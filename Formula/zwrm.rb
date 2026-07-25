class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.1/zwrm-darwin-arm64"
      sha256 "08322c7fb60df5d05f97c16f3928f0d408ef667c7b9b66942911be9fe2a237b1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.1/zwrm-darwin-amd64"
      sha256 "93dfbca870fae5b66baa5cf77cfa4a3e99dc4103a7e46ac262d8774d0e094ec9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.1/zwrm-linux-arm64"
      sha256 "809f414f731afa7176d650a7771e5f3dd87c086e921dc07f6f868e496162d7c3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.1/zwrm-linux-amd64"
      sha256 "1f71374fb607ef4a3f35617b2c3d865efc3a54adc4f848b8c919f60a8907707c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
