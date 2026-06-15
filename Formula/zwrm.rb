class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.0/zwrm-darwin-arm64"
      sha256 "e0e25ae825ab28903d7aa29462cbd8d7da3e4d8a44affcfa94fa0fedfecdf55d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.0/zwrm-darwin-amd64"
      sha256 "ed2ab4d88354aa256b7a9ba6d1b16708c009724d4464c90c43036134617cc62d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.0/zwrm-linux-arm64"
      sha256 "2c203ab6e937d5ff7ea0401461582951e33d5950dcf05e0556cfbbdf04dce3cf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.0/zwrm-linux-amd64"
      sha256 "261e28720c34441ee339b806d43d527c4d8877e284bd1d89b2c2da02d84da299"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
