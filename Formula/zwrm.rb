class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.16/zwrm-darwin-arm64"
      sha256 "88d693d067e973214003a822bf5bb5ee7daf612f7b80aba381a6190784842570"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.16/zwrm-darwin-amd64"
      sha256 "3e1245aa13ee2d658c33c8450dde2c801017138420eb75071370e2fcbed558c1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.16/zwrm-linux-arm64"
      sha256 "dcde09c09a640b63e8c753dd9bbc32a05ca0fb2c9f824144163774657e551fa5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.16/zwrm-linux-amd64"
      sha256 "445a825bbd7c1cf1793a93cdf4cc2340968cde272bbd582c6b3a919d474d616e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
