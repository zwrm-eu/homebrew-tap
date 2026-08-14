class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.5/zwrm-darwin-arm64"
      sha256 "c3cfad0d8b882f3bbbcbe008481c752027e2efed9817383c9f3f726029c55f44"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.5/zwrm-darwin-amd64"
      sha256 "103496cc793e657fe0bd8d10a82c0cc57551f2b177622d3d847a9d43c36fb6fb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.5/zwrm-linux-arm64"
      sha256 "1a66cbc476ce6bcb014728728c2cf15f271889d6eb1707e0dc64ada5815bb24f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.5/zwrm-linux-amd64"
      sha256 "4f7e1b2b71850b1ad06fccb85eb1636a2d7683a2ec5febdc4711f5c7d0ea7f9d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
