class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.21/zwrm-darwin-arm64"
      sha256 "8aa53347d89dc8037186e3aaf754aa73e00491857b8f14b9b586b901fa9e4c8a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.21/zwrm-darwin-amd64"
      sha256 "0a945e518fcf8dc93e24d6e692a6fb9333e6a32a6e8f5714f2f3e9774e22939a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.21/zwrm-linux-arm64"
      sha256 "682e3efa7db0d685009149c6bc30eafdd8b7be2059fdaecdb428fdba5ad5b580"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.21/zwrm-linux-amd64"
      sha256 "1f48094d3216a90301578371385581609b36d1eed4f7106981429af5c96b6e2c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
