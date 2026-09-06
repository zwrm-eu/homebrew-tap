class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.18/zwrm-darwin-arm64"
      sha256 "0f781639e102e7a4a175d4ecfe81d28fb43d49b36cd015c0c88711506e0aa8e0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.18/zwrm-darwin-amd64"
      sha256 "7d6a6245617b2e668ef11bcb1a35c487af14dbae1017285876ecef9e2dab2f36"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.18/zwrm-linux-arm64"
      sha256 "f7f3138a4b90609e792296fff1de6387fd194650d69786a91dfdd127a8af3883"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.18/zwrm-linux-amd64"
      sha256 "8897fac062a10fc2c89c21a6f7b7745846729b574fa089fab4008cc319959338"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
