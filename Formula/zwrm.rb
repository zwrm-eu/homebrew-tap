class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.12.1/zwrm-darwin-arm64"
      sha256 "8b6ff235f4426def78698bcf6f83317f5c51959f9206357a58eab7dc96e0f383"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.12.1/zwrm-darwin-amd64"
      sha256 "dec9409d6835110a81866926828b3687c27c5b14599726aa4f112c6b397cd16d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.12.1/zwrm-linux-arm64"
      sha256 "b6e61ebe63175a3ad0e18059257ba21b62f4b8d647aa5de8cc21928d6b44d735"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.12.1/zwrm-linux-amd64"
      sha256 "2b1adbf540bc172b290889328a7cef4f36f16b291c67fdb0d9972ceaf018e4a8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
