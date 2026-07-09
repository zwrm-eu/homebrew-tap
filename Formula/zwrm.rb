class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.14/zwrm-darwin-arm64"
      sha256 "6adf0c29d73bf5d0160b278559f731f0bb63bdfdd5c7673ab13ddfbc014e6507"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.14/zwrm-darwin-amd64"
      sha256 "9bccff5c7b24f870c5e8da65a4b3a2595e15c1f88f873b99d79809244193435f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.14/zwrm-linux-arm64"
      sha256 "2e88c439283072a2499536d09336429f9539b11fd1cab99972503929bd21c220"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.14/zwrm-linux-amd64"
      sha256 "1261eaeffabf8a150dc60fe2f6d100a3009f8d00c6269e58f155ec0c4ae3beca"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
