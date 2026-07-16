class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.35/zwrm-darwin-arm64"
      sha256 "7d493658942aecbebfca9f29926e88603acc89fb1ba0ead86fc1f49607a26588"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.35/zwrm-darwin-amd64"
      sha256 "2c30c1ecb0e5b77294957159c7fc8429eb1eca4a335f86f9d566baa620895b84"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.35/zwrm-linux-arm64"
      sha256 "441a64b4daccce39e1a82d2dd723548938ab4d3d22b6c3c8ede7b9b86282496c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.35/zwrm-linux-amd64"
      sha256 "db787df8154dfd865ddceeb28d49e096fad1d04686f03caad00f3ad2a180d049"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
