class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.5/zwrm-darwin-arm64"
      sha256 "91aba48524a348445320b44659273f5337d2cf331522c0350e9f2044c7a4156c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.5/zwrm-darwin-amd64"
      sha256 "88705d69a20b95badf6f6101129b513472790f24c56da4d84b1fa4053230ea69"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.5/zwrm-linux-arm64"
      sha256 "505338e4f62c99b63923deaf4f67a4e911ff6eaa71df29fc87f5e1c9b97e7618"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.5/zwrm-linux-amd64"
      sha256 "b7f9e45097a4c8deba64c8745b4b1095835b651ebf306b0faf014108a28c0bb8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
