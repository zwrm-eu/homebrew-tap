class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.8/zwrm-darwin-arm64"
      sha256 "5f051b0b75379a8fb0b6eca546b997bde2dd5492aaa9293f19d5287f4a962501"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.8/zwrm-darwin-amd64"
      sha256 "ca87a0adfeba5ee540eba3a1a4c9e34b5de437a92d13d84c57d2e1d9a0eda74b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.8/zwrm-linux-arm64"
      sha256 "b06338c832ea71f350b05609768ec0e19a0b1c60d39cc9230ddf2f398377521b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.8/zwrm-linux-amd64"
      sha256 "bf6825ff844218bd936c04f668f598d96dfb8424a6be8881a122a742771688d1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
