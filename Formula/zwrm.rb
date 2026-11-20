class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.15/zwrm-darwin-arm64"
      sha256 "de7a42842834201a65b9179d878964469b27dea463af0f50d52995efe243b898"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.15/zwrm-darwin-amd64"
      sha256 "f373ade03aa46332eadb184bd45233155ab0a58d70f25c13f4eac17a5b6eb5f6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.15/zwrm-linux-arm64"
      sha256 "646596179ecc631e523a467c7ca1064119ab00f6dc06c5e5642815db39596c9d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.15/zwrm-linux-amd64"
      sha256 "66ce6a316b6491dd564139a72870c7b9547b1f883204686abce91a2b66054c38"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
