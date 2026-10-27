class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.30/zwrm-darwin-arm64"
      sha256 "d8221b7fd382e8cd6e16dffa2a21cc1e6dca854fbf27ecbc77552a6ac7849339"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.30/zwrm-darwin-amd64"
      sha256 "760f926ede7164ffec5bdebaafbc9f52541b1a893f6f3a5a47365bc3a45457a8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.30/zwrm-linux-arm64"
      sha256 "f33fa56a8d394839e44b261f0966a43f318ca95df0976944f55de362d73e5a8b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.30/zwrm-linux-amd64"
      sha256 "c2df44807291c725e36da5f8d63705aced6ef9686fce8d2006247a379dda0751"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
