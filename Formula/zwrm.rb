class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.4.0/zwrm-darwin-arm64"
      sha256 "004ad29112bf0b4899d58af2c86b41b31dec0b6f458e5dc834b3ed3cd9ee895f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.4.0/zwrm-darwin-amd64"
      sha256 "67c1a3f50e0f9552ce719ea71e0e4e1f5be88a3eef210616fd4e1cec72bf5223"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.4.0/zwrm-linux-arm64"
      sha256 "e47867749992cea9ae9f6b8d9ef9aeaa3bda29e14672f7e0ee9267c6af9b19b3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.4.0/zwrm-linux-amd64"
      sha256 "857be6c22633f3750b35ac0c1a0a7f1fcb7ebf397ae093cd2d278404b2768a1c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
