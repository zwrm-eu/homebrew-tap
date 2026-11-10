class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.45/zwrm-darwin-arm64"
      sha256 "deaafd52f00288daff790ab3c06c578ddf556c26580fd561cb077d43eb78d068"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.45/zwrm-darwin-amd64"
      sha256 "d3a41bb1ffb0194f204cd90d62401294830778a8f818403274ecc19c6f76a6a1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.45/zwrm-linux-arm64"
      sha256 "6757bf6984c3bcfc210055803a6aee403ef81eab971d1aecec5c4f17f19c716b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.45/zwrm-linux-amd64"
      sha256 "806349e2f62518b2c353a0baaa07f2de93f859948390b1ca8463859907b005a2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
