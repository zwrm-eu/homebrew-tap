class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.10/zwrm-darwin-arm64"
      sha256 "4acb0d6004e70e4c84d40982fd0e1e9a910abd3e4614f9b92bfea40149d09bd9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.10/zwrm-darwin-amd64"
      sha256 "4247e1ad3dd06a179bed9c4032cacc59c7fad639128631e9a76ce02901485258"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.10/zwrm-linux-arm64"
      sha256 "0f02518a0ecdd0625af0c68525c67907efedcb5022184e5af564eeef04ae5082"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.10/zwrm-linux-amd64"
      sha256 "ff20b8552622afcc09217e1aee08ddaf6921c86f85cdc1347e6089f94f53bfc8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
