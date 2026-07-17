class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.39/zwrm-darwin-arm64"
      sha256 "89f80408e03c6fa9ecb92d5460411c9589ef84e3ef3b3241b18121d75359a25f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.39/zwrm-darwin-amd64"
      sha256 "be85bd7c2340c1646a1f23426bde4b59276005a0b11d9d31a80eefbac7339cb4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.39/zwrm-linux-arm64"
      sha256 "ce580ea888cefafb1ac537d73f0475a25e60b4c81e9e3ad8ff1c1b57476fdcd0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.39/zwrm-linux-amd64"
      sha256 "79f71159c1dfb0ce30d7cfb5c45a8d5b5d5d73889323be6648cc1ee740d5974d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
