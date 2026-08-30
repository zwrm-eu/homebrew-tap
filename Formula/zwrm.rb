class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.11/zwrm-darwin-arm64"
      sha256 "3838d32db705c2fe8059a1f2b71254e750458e3d830b36501275a765fa13ead0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.11/zwrm-darwin-amd64"
      sha256 "a06b0d88ac463d08e584072b49372a63eb4e0ca82b202dab9b8b18daa5475c19"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.11/zwrm-linux-arm64"
      sha256 "2364c432448618f56ea3e4ea52254318a85a655dc40fd5ec416c08c747c209bc"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.11/zwrm-linux-amd64"
      sha256 "68ebec7201392515cc4e82fac7eb4cd25e3d20b6957dc462e3a31f00cc7e4460"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
