class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.2/zwrm-darwin-arm64"
      sha256 "7340800fb03ff97b390af31d5d550e96aefd498f8d1eba3b26fc7912fc00590d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.2/zwrm-darwin-amd64"
      sha256 "07922c6cf87c5fc569e2e3516c022608f1625388db76206589bda3b84ba85bd4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.2/zwrm-linux-arm64"
      sha256 "15dba9744820433526d42c23b6917e2a46f748d8d34865b562f3be372ae49a60"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.2/zwrm-linux-amd64"
      sha256 "41db19e62722081e2ee679f5db21d065ab5d498211456c8009b4c0ebaaa0de84"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
