class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.30/zwrm-darwin-arm64"
      sha256 "40eb3e62486e2672829666ee281cff712df65bf475934bcf50658c6b586926b1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.30/zwrm-darwin-amd64"
      sha256 "b4e5714ad82b050b7a5b4b860b1dbead1360bf08aa76cd1bb0929aef3ff91bd1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.30/zwrm-linux-arm64"
      sha256 "10891d536678088af027950519b7318bc821375d94321d735239a1242b435264"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.30/zwrm-linux-amd64"
      sha256 "fcd461debd4b6d18229b7b913416b4074bbfe9ba8469da6154c80e252b3729ff"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
