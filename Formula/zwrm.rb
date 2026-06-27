class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.13/zwrm-darwin-arm64"
      sha256 "03cd520859f27e5b1e501bae87d65e1213cbf158fb03f0a63b682090242a5553"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.13/zwrm-darwin-amd64"
      sha256 "96803155b3d428ed2a8e16a2e455ec4de15e14a4c65cd9d6acd3194a624b5bc8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.13/zwrm-linux-arm64"
      sha256 "215448ce32ba1caa2ea20b20578dfd98f39d44a4aa1f7671eb034e600c8a4715"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.13/zwrm-linux-amd64"
      sha256 "5b05524b2fd3501d4131be330cf1902b8b264751fedf743457cebd23c964d41a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
