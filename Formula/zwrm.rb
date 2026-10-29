class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.0/zwrm-darwin-arm64"
      sha256 "04fb90900a9b1c0bc721ad073a7b5ad3038259ea2b6d84ab604c1fd031ae8a01"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.0/zwrm-darwin-amd64"
      sha256 "4fe18808439d034da43f70d4dcb9af69f8d060397f7570c55465df41a16c60ff"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.0/zwrm-linux-arm64"
      sha256 "a2b2a4989f93fb109c0df0e962afbe60d1e798f159fdb30c8bdb1b6000536d1d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.0/zwrm-linux-amd64"
      sha256 "91cd97909697419a8c408a9b9f0a85cbdddde622573a859794a50c030949bc66"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
