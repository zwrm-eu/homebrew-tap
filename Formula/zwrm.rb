class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.19/zwrm-darwin-arm64"
      sha256 "db7fa51ee614b454b109c91256d41d3c9132c76be8e721cdd106f6c64d180b48"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.19/zwrm-darwin-amd64"
      sha256 "918a642303be572508f3eb8ce05cd84c6fbe650bebed2c85463f8c0597402103"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.19/zwrm-linux-arm64"
      sha256 "302a15e7df350b1a5c5f28af0030cfc40db2b2acf512b58f783c33a8531f4435"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.19/zwrm-linux-amd64"
      sha256 "d25160dc077d04d44a4b94bfa03ef11480c59a5308c8c178604d5368cde07755"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
