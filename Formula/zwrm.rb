class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.3/zwrm-darwin-arm64"
      sha256 "6ba262a3e13a3ad85c8957c6473147dceb7fd7bd945509625b7e960838d0243a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.3/zwrm-darwin-amd64"
      sha256 "ed92769d9b54f296cd89c282eac6cdd6d517354074fb6fe33571fa22766763b7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.3/zwrm-linux-arm64"
      sha256 "6fdbcef0756185912e89fc5f65ba7e2a78a625f0063b4332cfaae5a73fb3cc2c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.3/zwrm-linux-amd64"
      sha256 "a6e7adeae3ec77e6fd277216ba8c44ad132e585fd71d2879c821ecfa60649ea0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
