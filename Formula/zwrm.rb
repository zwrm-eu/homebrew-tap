class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.18/zwrm-darwin-arm64"
      sha256 "190cb0e607b70698cb073fd7068bc01a677f8cdb1b4eeb9ab6b0a2f78e28ec86"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.18/zwrm-darwin-amd64"
      sha256 "4e9ae4b6f3a762a5d929de073192d60dafe72c499f1a840039e1a9b17e10d753"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.18/zwrm-linux-arm64"
      sha256 "e12c494d831fd12523b4c2757dbd0efde90b97e2fa876e57dfddccf355ee4aa8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.18/zwrm-linux-amd64"
      sha256 "cc3ad3961c6063a3e1858b512bfe8bcf5185e56f118b299ca77780da9fcb9f2f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
