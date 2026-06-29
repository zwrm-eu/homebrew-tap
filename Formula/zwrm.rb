class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.1/zwrm-darwin-arm64"
      sha256 "561a5a0f7abeb3e20f0814ae267cf01bc1279675da806a2304ae487d2c7c53bf"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.1/zwrm-darwin-amd64"
      sha256 "33e49169dc3254d45177496780aab4df0a77e6c2c4c1f6ebcdf0b9fc45ba5f98"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.1/zwrm-linux-arm64"
      sha256 "36a04f4b137b578d81366d30a5afa4a637477b886d0be056ccb18ec336e4d2c6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.1/zwrm-linux-amd64"
      sha256 "1e3919531fada6bd8126008c93d724cff62595c7070668289060ddf66c1ace0a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
