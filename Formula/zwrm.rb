class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.8/zwrm-darwin-arm64"
      sha256 "3f87e5d7eaa7a8b609d1d246eed52eddde1f5c678f7a45228174055b65300c98"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.8/zwrm-darwin-amd64"
      sha256 "d48823a6afc12d08e4487967fc13689fbb74122005dc0e3fb328332db12a0b91"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.8/zwrm-linux-arm64"
      sha256 "da88f2b271b47d0f5f4c0f56f3e4d4d2617c36b53983b0b24782f586a83d096c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.8/zwrm-linux-amd64"
      sha256 "67c458e545fd931c386298578ac6466778f63089fd9502f7eb2afd137d240c0d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
