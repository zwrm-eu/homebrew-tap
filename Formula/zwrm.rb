class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.2/zwrm-darwin-arm64"
      sha256 "e6763f11693881edf451109f63630f558d6f143168142fa68b2388d08dbf4d58"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.2/zwrm-darwin-amd64"
      sha256 "d896c7cceca74776c8611a11009edcda94c347c1ad2dfd3d79c1d99ddcccb858"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.2/zwrm-linux-arm64"
      sha256 "8ef9cb69c5c531b6cc7d7c90d535c5a22f36a3b701e60b9d82dda6cb57e0aa1e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.2/zwrm-linux-amd64"
      sha256 "3acc891dfee0b1020e0fa054401ff2f10c9e59bc5f5422a307c57361e751391a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
