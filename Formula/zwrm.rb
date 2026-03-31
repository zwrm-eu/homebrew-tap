class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.1/zwrm-darwin-arm64"
      sha256 "6888812a26090d990c9dabd1f2c66e853f5b0d1e017db45652b52d6f4155a7a9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.1/zwrm-darwin-amd64"
      sha256 "31cd5901cc10ae4d9c04e8886a857741aba8947703466d22d770288ab299cd20"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.1/zwrm-linux-arm64"
      sha256 "2ea83a7d02cddd69cd825ec4d678a954de2007d53e8d2bed4470efb41a297909"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.1/zwrm-linux-amd64"
      sha256 "0bf54ab4e075ce52c10385d0f9dfe3817208fb9237112fc3475f620e504707c0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
