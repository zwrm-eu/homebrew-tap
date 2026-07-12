class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.19/zwrm-darwin-arm64"
      sha256 "604138a8099c3c1557087b97fd928e35f96feed62472e7ad73e97b78557750e4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.19/zwrm-darwin-amd64"
      sha256 "d47b6f75cdd7569b3a89300f54c039d2123374cc4365e1428fadb6e6fb3be24d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.19/zwrm-linux-arm64"
      sha256 "12bff788b1cb47122db5c7793dd2a168720ff95c4f53ed90b3160eefc1be1380"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.19/zwrm-linux-amd64"
      sha256 "a2a19e3eb3991cdde7444ad0ba4dd0fb435d2c53aac7e1ecd6788e7f2510baca"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
