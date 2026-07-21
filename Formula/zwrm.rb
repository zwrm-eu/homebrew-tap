class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.49/zwrm-darwin-arm64"
      sha256 "81d2a5fc0dd779741b7beddf54e12bc49bcba72d886c5bd41a5a05f5eefae2d9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.49/zwrm-darwin-amd64"
      sha256 "91af774e81fdbec40f69df86fc28e04e34fe2988d68ba8e5e2e217aee60fd1ad"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.49/zwrm-linux-arm64"
      sha256 "62ef8b292717cb5a47e3834f5024094281df0bb8a905e982a21e49d8b5ed1c2b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.49/zwrm-linux-amd64"
      sha256 "7f2c891b9345afd1f0106a4af1631785a4b5f06ce01c1e066ebcf6ff525c0e32"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
