class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.10/zwrm-darwin-arm64"
      sha256 "8ec9cc2fab5a6a37f68129653cb47f6cb4598fec95cba3bcab50cc39fde950ca"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.10/zwrm-darwin-amd64"
      sha256 "d25cdf5221f4d067a831753178c88c8b92e575b1fce54fe15addaa103d33fdb7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.10/zwrm-linux-arm64"
      sha256 "e65168f4ff803e91a298c1a387516b3c02558bb120909ee438ac1622a2f00851"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.10/zwrm-linux-amd64"
      sha256 "ad904e6f2b3571cafbfb1068248980f86bfeb362462c2229e62dd4318eb9deb8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
