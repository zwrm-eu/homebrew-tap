class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.14/zwrm-darwin-arm64"
      sha256 "2f464bef95c0e0fd481c8c921071ee9eb186c50d47425fab807d4d37e7e762e7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.14/zwrm-darwin-amd64"
      sha256 "9ab0665b7e9b260058cc0cb543fa73b65c3b37effcc0823f14b0131607155ac4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.14/zwrm-linux-arm64"
      sha256 "3914cedf943fbf860d4006cef2661c7b4ec49136c420854bda654be070b78b3f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.14/zwrm-linux-amd64"
      sha256 "2ae6b0a593c72c28531e2de951f229eff84655e4a96f636822f33969bbf28fc3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
