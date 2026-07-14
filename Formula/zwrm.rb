class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.29/zwrm-darwin-arm64"
      sha256 "0c55da083f01bfe98e6170a877b77fcad4440e6431d9b9422a2159e88e588207"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.29/zwrm-darwin-amd64"
      sha256 "ea052c22c0ef70d15b8a60ec98e900e408abe5bd8a0bfadec57c5d4402492e49"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.29/zwrm-linux-arm64"
      sha256 "c22b97b5a4418704bca4af98a9da79ba0a6b480fda1a7e3c87eaeec7f31238bf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.29/zwrm-linux-amd64"
      sha256 "a6bdee0b017d8ac998b4dfcc693ec1930e725e3a044abbc19828b4d584e077ce"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
