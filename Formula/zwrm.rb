class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.12/zwrm-darwin-arm64"
      sha256 "91a04bcc61ad846292d936faa7b598bace1dfc4458d949522d632648cb4efde2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.12/zwrm-darwin-amd64"
      sha256 "e21a4d55d8d9b8ffb1dbec9ea0ae7285c1c7ab607c26e1d4ea931284ce55c30e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.12/zwrm-linux-arm64"
      sha256 "f3226a6296461d7d13c3aec27572b75f4e06ec00a5fbc6b1b784215d26b842f3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.12/zwrm-linux-amd64"
      sha256 "fb7d5660b5f154a3fa4e7aebe726fa6824252682c748e087745b17bd90d6a2a8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
