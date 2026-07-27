class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.0/zwrm-darwin-arm64"
      sha256 "649ec20f374a1d9995255cabc979a74714be13e560186cca3328c84aedd5b0ea"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.0/zwrm-darwin-amd64"
      sha256 "c423da184ae1e88371663054a83822506b13d3248a13cfaea89a9d049d3f19ea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.0/zwrm-linux-arm64"
      sha256 "e4b8d4ae19ac9894cab993f82d9d1a1b1bdc8157089e08d25812995219a0d7e0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.0/zwrm-linux-amd64"
      sha256 "8687955b335a7320f3941e5f9f5340b07155c8ef7c1c88d2512f8910f6f63b63"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
