class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.0/zwrm-darwin-arm64"
      sha256 "f83d71b4b7224a403a8273feb419007018dafe4c66df7b68ad9b83897224a617"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.0/zwrm-darwin-amd64"
      sha256 "fe3fe74d4e480d62f852367808d489814b52cb27999088200b97b00d523ac54e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.0/zwrm-linux-arm64"
      sha256 "db5ea9bb369aee46c61dd4da7a2edf20c0440aabf631bc5527be58e271145129"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.0/zwrm-linux-amd64"
      sha256 "ea1913be75a54a435ed6244dcb470dd4763287a7ae17fc65182b04b7793ad532"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
