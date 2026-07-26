class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.10/zwrm-darwin-arm64"
      sha256 "f651dcb50837ddbf0f64bc863d0cbba6627b1b5fa1cae6c8744f930153b0323a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.10/zwrm-darwin-amd64"
      sha256 "791ebc667a2be8c9be3599b7866980e8ca8d62e00abe7197aafe5266406e53e9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.10/zwrm-linux-arm64"
      sha256 "8f7cccee7fd478befa4205a21cc207a02fce8364fdfee721ace41d739dcb934b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.10/zwrm-linux-amd64"
      sha256 "a6fa63c2eed0f708f442953f62b088f708c14bb600908212d0229f12efaabfaf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
