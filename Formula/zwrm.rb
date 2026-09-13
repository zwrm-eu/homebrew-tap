class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.9/zwrm-darwin-arm64"
      sha256 "af64cb49d3deca9b2b471176e0fd831a0fe1553013664754235fbfdceef2d81c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.9/zwrm-darwin-amd64"
      sha256 "1919b766b8c35c10ce611f94803242587cd464e7a8b9d2e804c252837f33dc7a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.9/zwrm-linux-arm64"
      sha256 "4d650eea9d9d8f3326f7ce327332f2834f338eeb0adcb14d3f4edfef0eb14ce9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.9/zwrm-linux-amd64"
      sha256 "72f274d18a2f7b3960437c674695943c284c6e9da39ca8f5fa455ca2b6585a1a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
