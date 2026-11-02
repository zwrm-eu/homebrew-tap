class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.9/zwrm-darwin-arm64"
      sha256 "5bd76808e544bfc8dc23b7a8330630916e4e1495abeb3ad3f5384029d329d002"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.9/zwrm-darwin-amd64"
      sha256 "3a2af93d6e38897426f293f7108464087ef96bcd4a073213e5fd744933ede8cf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.9/zwrm-linux-arm64"
      sha256 "75bbf49c5ef7ab35f8a0f057ee5a83d3f319654166214bc58f903f7f7cf3588e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.9/zwrm-linux-amd64"
      sha256 "8d761a9a60952b7ef4cca9dc99aefb5e93772712d8a94ec8634c21a4db722bc5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
