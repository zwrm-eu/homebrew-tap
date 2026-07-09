class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.16/zwrm-darwin-arm64"
      sha256 "3814100f69da1955edaf168b45b6e7866aee312ae035438cfa929c73b6e8de41"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.16/zwrm-darwin-amd64"
      sha256 "1db9a70457d0eb014ce4dc7f7c6c71419dfafc220d3f040e926884c38cc01b42"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.16/zwrm-linux-arm64"
      sha256 "c68f0cef427b88c7334266be75f2200e707e5c794400b1a5fec1ebd5093c112a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.16/zwrm-linux-amd64"
      sha256 "871bd658be6a61b4af3808f00230ca3420b75ba4935f7114c2a5af9d0f21bc66"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
