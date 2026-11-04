class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.18/zwrm-darwin-arm64"
      sha256 "8df3e25dae0523d7684ca84453c3bc27a4b467d19413156a4618ccf3335cb1f3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.18/zwrm-darwin-amd64"
      sha256 "f9d0ecff7020f9b57d11247fd5cb02ae3c7fe635f8c21f93f386159b83e76500"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.18/zwrm-linux-arm64"
      sha256 "375e487d6b4a60eb30b2c5e2d5ae4cb6dabb81fdb83b19bfcf0ba4c7d2404f12"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.18/zwrm-linux-amd64"
      sha256 "7195025c91bbd9910d38cbaecbdc76619003ebb3b2f734f4782d2810cd9a86eb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
