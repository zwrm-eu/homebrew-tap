class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.0/zwrm-darwin-arm64"
      sha256 "01cf82df3868e0739a8473a3bebbf8cd70f9fb7dac69dc54f03c58c0b4d67b80"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.0/zwrm-darwin-amd64"
      sha256 "2c7f8a1c260b154c45914be5d275745d1ffab4ff80b3612fb838c6383dc1c1c5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.0/zwrm-linux-arm64"
      sha256 "77edb20e279ca2434beaff4cd0a20bd3744875873d38e95e66595c2eb15b9173"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.0/zwrm-linux-amd64"
      sha256 "99311d1ff6c0cee3f730134f2a6d97f242fb9b048410c0c053f37152bb84fc7f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
