class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.23/zwrm-darwin-arm64"
      sha256 "4723acafe3279008169ea3f2c159705bbd2c81c74da4513de565acb05472db4c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.23/zwrm-darwin-amd64"
      sha256 "2b3f55f1baca94ea490a2d851524c7a34e055f1b89807f6836c2d733b21ec4a8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.23/zwrm-linux-arm64"
      sha256 "26e226529f55dc0774dc37e5984c519c21230c8656d61a0eec19a1caabd036f2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.23/zwrm-linux-amd64"
      sha256 "b0a1c2115a33f3f9db6459749fd369eb471a859c8e145f2af338134cbe393b35"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
