class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.28/zwrm-darwin-arm64"
      sha256 "94f67785f636dad2a59a3da54c91db04f0831bcd1aef46553f6255e08ce86653"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.28/zwrm-darwin-amd64"
      sha256 "be4762ddc978dcd6dcd3d86b2b89839d38186b57ac44b58775c4c4919553af08"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.28/zwrm-linux-arm64"
      sha256 "9ce3d35b4f0514cf30873d1d5c88d2499962f5ecf241658d65b2c969d01200bd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.28/zwrm-linux-amd64"
      sha256 "3dc0b3048210a34bb2f272f57201dd5ce78dbbf02942f362b0c6d5e7f4c286b6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
