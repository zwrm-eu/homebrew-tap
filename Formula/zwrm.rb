class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.21/zwrm-darwin-arm64"
      sha256 "e4c0e308e4a5b811c22ddc3c0d09f8c6c036d564e612b1c7722f5bd56bc59873"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.21/zwrm-darwin-amd64"
      sha256 "8996ca024cb929cc7a56158e18bfe81190683f90e4636ef337d26e72a33a402e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.21/zwrm-linux-arm64"
      sha256 "bc8e19ea38ac560aceda1f5e352a6dfe68c0d3319ade699b4f1399197bfb0b5f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.21/zwrm-linux-amd64"
      sha256 "88576dd7402a8a43341a57132eaf42aecff44e7250236a429f1eaa256b57adaa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
