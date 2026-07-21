class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.51/zwrm-darwin-arm64"
      sha256 "59433d26a87e52a837a94d613862bb9f02176c2e18b1db7a5181e350682fb2e1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.51/zwrm-darwin-amd64"
      sha256 "730c092dbafff6ca1fa45f254eae6e99f311936434b8fc498dfd6de25fec27cf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.51/zwrm-linux-arm64"
      sha256 "89286af624b3c535ea291308396ab40d3d1a8aafbf8787f91a0e4b29e18a22fc"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.51/zwrm-linux-amd64"
      sha256 "c2ad33a070871caf971a855bf7315013f8a892286c03816f814b7d7c5984c92b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
