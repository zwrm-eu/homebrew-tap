class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.6/zwrm-darwin-arm64"
      sha256 "edca26f0e833f1791ae3b5b83cca0f48aa17a8bfdaa6877734a08b5f77848df1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.6/zwrm-darwin-amd64"
      sha256 "2dc0accad43c2f5f19047923062df22d7113c6f05b3e876bb59f66b3d286d526"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.6/zwrm-linux-arm64"
      sha256 "75761def4f36aa26ba252ad6860244798fda1c3792aa20670f32fb16354f8bc3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.6/zwrm-linux-amd64"
      sha256 "9f4f87a0d5011b5b5feeba185cc1d75a5e8d2aa0f16e341d46612be88fb711dc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
