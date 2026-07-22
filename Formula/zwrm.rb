class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.58/zwrm-darwin-arm64"
      sha256 "e3a95f18d43c4b0456c11b36ae31781344cfe880f75ad5f3a97224e99cec3d9c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.58/zwrm-darwin-amd64"
      sha256 "41e866698b0f3b4725e8869f165467ab192910ad08a18852e3fb2a4659249a60"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.58/zwrm-linux-arm64"
      sha256 "dee98ba4e5d45c83b45aa3569e58d3099e0068474017d22c7e0391af65680439"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.58/zwrm-linux-amd64"
      sha256 "a87c8fbd53afd22766b3b4618a7872ce60e0b786cc84756fc248a0be218cecfb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
