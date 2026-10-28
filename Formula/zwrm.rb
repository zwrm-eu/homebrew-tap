class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.3/zwrm-darwin-arm64"
      sha256 "16ae9c1c774a2da48fa0f5759da1a886a688110ceaf01861038899e631f1e9b3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.3/zwrm-darwin-amd64"
      sha256 "839fc568ded20f1721951f770cb6bd26446efc5ed073b5c8a33c5d421404a513"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.3/zwrm-linux-arm64"
      sha256 "60005c295d94081e017257881dae44e8201d7389bf7f8adf85878aa06f182617"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.3/zwrm-linux-amd64"
      sha256 "b41e627ac70ce971f19c44f942099be124976370d3d7f2b406e836eb2fa158a0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
