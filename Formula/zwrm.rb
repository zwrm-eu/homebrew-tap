class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.13/zwrm-darwin-arm64"
      sha256 "3e783bc83e9d5770b6658ba54ff6943da7971165a30ffb4e48997fe2ecc1274e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.13/zwrm-darwin-amd64"
      sha256 "9d7a3317275ee2e932c25c12fedcc66b0c296bce7a5484a41c44d59f9d3746d4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.13/zwrm-linux-arm64"
      sha256 "28ef65540f0a6ec2d6cfb019400456497535420b322559f164adfde193b6c9d1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.13/zwrm-linux-amd64"
      sha256 "0bcaa38aed1968659783d5eb56436977a99c29195b59a6755804650681f2f121"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
