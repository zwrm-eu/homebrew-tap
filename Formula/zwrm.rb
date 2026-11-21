class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.16/zwrm-darwin-arm64"
      sha256 "b2eec070046f96387180829acc39c82e052c980655ce7836a1452465f4d64af6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.16/zwrm-darwin-amd64"
      sha256 "1bdc0d3711467b8d8467ab382c80f266b645d13e26c855f3be04f96acd29a460"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.16/zwrm-linux-arm64"
      sha256 "57b9b483a66c969f7c179fc2e8b26b9dd0a5b60359df4e214f8ce65dfb249468"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.16/zwrm-linux-amd64"
      sha256 "449f169472e16567faab1812a0e33b66e7b5d36c0a08e19432d4c093163708fa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
