class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.9/zwrm-darwin-arm64"
      sha256 "c3023f34fb75b389a291980e46d904f1a41337903dcc26234698df2ad30137ea"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.9/zwrm-darwin-amd64"
      sha256 "10683590ef49fce5ce75753f156adcc5270fb662e708032f759287ec73a6d6ce"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.9/zwrm-linux-arm64"
      sha256 "1c70c6a9d46f59b9989409ae30880a589a7fd2b15da0d9b4880e30586ba2b2fe"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.9/zwrm-linux-amd64"
      sha256 "34f90003a3105e445861d9c35be0a44814e606505858b7207ed2b867f05a3c26"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
