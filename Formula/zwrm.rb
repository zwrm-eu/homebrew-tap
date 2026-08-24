class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.9/zwrm-darwin-arm64"
      sha256 "e3a291f00378d53f51e7dae4be0f217821a5f5f73b1a113aca42af753808e8f3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.9/zwrm-darwin-amd64"
      sha256 "8bb00de5683a5170a73c34dd59bf89862bdd8d5a65af30df5cd7a4cb66ac9965"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.9/zwrm-linux-arm64"
      sha256 "aba68e18046eb1c2c972039107c365b67cc71c7fee3debfad3ddb3b54228739d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.9/zwrm-linux-amd64"
      sha256 "6fa6a2e75cb831d92a1f98dfef310c85573d8b7695703b64eb6d7969835ece45"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
