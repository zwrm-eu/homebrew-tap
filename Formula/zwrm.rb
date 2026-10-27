class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.0/zwrm-darwin-arm64"
      sha256 "f3ef37120c7f00a9a64308510c67da5c7a081960d0a86bf2373b30b8e55b40cb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.0/zwrm-darwin-amd64"
      sha256 "06ef4aff8f16c1576856e7b1c23729a3cc3ddbf5b0f125a0d19ea6330feec5fd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.0/zwrm-linux-arm64"
      sha256 "d4f753f95e0d9e4b596fed10e9aacd897d75d0bc69ccac4699de20b143893080"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.0/zwrm-linux-amd64"
      sha256 "3fbb42f4a42de2d128a7522cee8fda98b29ead26ce9618c4cae4351602fe85d4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
