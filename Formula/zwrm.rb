class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.17/zwrm-darwin-arm64"
      sha256 "6b39c61042f19acb14539fb0a025860fccb44ddaf56a8d6390f199f46144d4e2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.17/zwrm-darwin-amd64"
      sha256 "1f3d456063741b70a32142cd2cde4f39ef80a3aa7dce5eafd27b89b60a060fe4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.17/zwrm-linux-arm64"
      sha256 "02464973d8d28ef0583a4957e3936be4b1d1e1e4eee5c434e4a045792007516d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.17/zwrm-linux-amd64"
      sha256 "e1b5013db6cc87e7fb90c987e2a4536e0e51002d8c47501686bb90d4e625eefc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
