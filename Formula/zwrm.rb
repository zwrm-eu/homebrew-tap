class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.1/zwrm-darwin-arm64"
      sha256 "7c4884ce483ab6fbbff07517ccb28fceaba22ac418ce1bde9e9dcb85720a7d5b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.1/zwrm-darwin-amd64"
      sha256 "7e3e6e0824a20d2c1c98691b7b1a80ad9615a07075c9bb8b0eee8639d7cb2e76"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.1/zwrm-linux-arm64"
      sha256 "da19b6b05a19a5723acd841b61ef4ac1a82afa6c36358f2caac3209e6fa1f367"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.1/zwrm-linux-amd64"
      sha256 "f1cc6b500b44cb9d049ebf37ba1da9b2ecb41d0204b25973cb44c2a7d3752d4f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
