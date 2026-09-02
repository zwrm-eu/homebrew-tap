class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.1/zwrm-darwin-arm64"
      sha256 "15eb0c797e5da465579d988e41b63d471f51604789c1f6d3933d950e2ed099f7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.1/zwrm-darwin-amd64"
      sha256 "9574c9d60ba90c53f9123bbf0876abca6d9a8da82de87dd092fb013a7e815cc9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.1/zwrm-linux-arm64"
      sha256 "abeff141fdaf29070e9c718aefee88bf8d67a742f6fdb4bee30968acf35c0c74"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.1/zwrm-linux-amd64"
      sha256 "fe34d8e378137e7d12e154b37ff549a3c66a8e1481f729e61b20857473ce08c4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
