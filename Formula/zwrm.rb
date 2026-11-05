class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.28/zwrm-darwin-arm64"
      sha256 "23ac6788d6d570ab556ba5126ce4848500f42be00ab1dd78161c003cf715c993"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.28/zwrm-darwin-amd64"
      sha256 "aa7f9236e6ad6f2800a4adc04cac111dbb882a7cc2cde75c8ca41c6bafa2d879"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.28/zwrm-linux-arm64"
      sha256 "118b72c74683734b03b07f42ac6e93f565ab1611e8fb0eaab838aeec891b0b54"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.28/zwrm-linux-amd64"
      sha256 "65c32268bed9a52bd6ec61a4d74076d2a4f337d87e21a55cddf8c10dbf6672c9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
