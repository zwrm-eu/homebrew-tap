class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.11/zwrm-darwin-arm64"
      sha256 "5d1dce43d83ba2f1b9bea7168e6424243c37deab2514058d9df9bd081dfb2a85"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.11/zwrm-darwin-amd64"
      sha256 "0e8aa2085f9fbc93b367ed9e6f754bc94ac012f0e3ee4305543aec7bc422f19a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.11/zwrm-linux-arm64"
      sha256 "232eb1f060fbde4f10b8a866af5b50f8be8a2249760eb9f8b21ef22b7575ad2f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.11/zwrm-linux-amd64"
      sha256 "bcf886948daba2190f60d6c2916ad0d18ca9d50b00b9d0233a8bae078f64ef07"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
