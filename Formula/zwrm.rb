class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.6/zwrm-darwin-arm64"
      sha256 "698cc0286e92b90e879d2a48aeb4cd4fb39d4689ac0816d82824db0c2de6f88d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.6/zwrm-darwin-amd64"
      sha256 "3d2d54173a4819e48dbbcbc56e23ff4900d2a1301b6fcfc2a98e94503362f20f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.6/zwrm-linux-arm64"
      sha256 "7018ef5d8f16e046630a235196f270481c1be5f863f0c3879a41c05560a54cc1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.6/zwrm-linux-amd64"
      sha256 "d1c77c21afc57a2ca26b1b04e0fb2942d80147c932cf4cd9dd3edf19013b545d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
