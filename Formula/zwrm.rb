class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.9/zwrm-darwin-arm64"
      sha256 "59b7375a6d831b6745964e40bc969c7834e933e652430aa0b5ae49ce4f2e2b88"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.9/zwrm-darwin-amd64"
      sha256 "e4238099032f751505fe52238432367371beb7ecd1d90492475a518371f35803"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.9/zwrm-linux-arm64"
      sha256 "2d236d3e48fd3f3761c99c2e170573bf5502b6bde49818a1ea65b6733ca21129"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.9/zwrm-linux-amd64"
      sha256 "98ff70f3e4c1964ac077529ce28dc3e04b6ae2013a857cc0e89819e2b8a4c64b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
