class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.21/zwrm-darwin-arm64"
      sha256 "925d33e3d4db98b31ca4c2f9470f8ecbb7b8c84fc569fecf3770279b5cb17626"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.21/zwrm-darwin-amd64"
      sha256 "3b897461f44d9833d9e248b279fd23b7dd5a5a68d160ad9959920358cd4afe68"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.21/zwrm-linux-arm64"
      sha256 "291dd37a584d09928247f87983c00612d3f20258529acaec2d52f8f87a685fc0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.21/zwrm-linux-amd64"
      sha256 "eff478c30bb160a9a4afaf3c9a69d79b1818e331c6346669f0d05dcc0b1af1c4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
