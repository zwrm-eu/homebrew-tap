class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.1/zwrm-darwin-arm64"
      sha256 "38b1435bbc2bd8b7db9a0f5b7966c5e3488f2f9299216c6538a26e9a449f5396"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.1/zwrm-darwin-amd64"
      sha256 "bbf068b4153a55f85b48caba9921aae39c563f9a820605bc4d3efae4cfa3b0d4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.1/zwrm-linux-arm64"
      sha256 "c7edfc1b67f7ab53e4d531732dc3d389c9d8f65c2b74bbdcc51aa356a24c39ce"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.1/zwrm-linux-amd64"
      sha256 "db84577acacc11efc3c0dbe24b68ef9ea44ffcae8ff63f360727a8612b2ad13f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
