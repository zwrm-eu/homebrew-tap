class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.20/zwrm-darwin-arm64"
      sha256 "e517a5063b942bb059e6fe6c439143163565671561b47b5a7470a02b786dd1a3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.20/zwrm-darwin-amd64"
      sha256 "e02090d4090a03eab3d90b5580bf113d50197ef4d44806a727b54b25e288ceea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.20/zwrm-linux-arm64"
      sha256 "cf583c5dca2ef1adafecf84871582fe7172d5363cb43245cceb3d66186fd5151"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.20/zwrm-linux-amd64"
      sha256 "8cd7e0bff4d6b1dda9ff4770c693c28f3db7001c9c140c0e7fc5f628c08f44da"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
