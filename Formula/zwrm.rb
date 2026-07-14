class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.31/zwrm-darwin-arm64"
      sha256 "612301b85046ea15e9585d214029a82322cbd9ebd55ad5f3906b54059f682980"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.31/zwrm-darwin-amd64"
      sha256 "0d07095668564b685fa9ca56c79da528423f4482352556ec3a55cf6a8da89b77"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.31/zwrm-linux-arm64"
      sha256 "79bc1096104e28d6a4af8a429de750c4f0bd076d0bb523ba3ba7b8944807ca93"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.31/zwrm-linux-amd64"
      sha256 "72010b766151e8cd4f9a5d5244aa2810e2c38c87932682f793401a8405ba03d9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
