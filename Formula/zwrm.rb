class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.35/zwrm-darwin-arm64"
      sha256 "d364ecfd96f2c83eba4f7f2220c4597e999872cd3fda390697b5a25a73610dcb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.35/zwrm-darwin-amd64"
      sha256 "0ae5014f69ff2ac2aa4307b43749d01850e1724b204ce882c0beafa83ea3b35a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.35/zwrm-linux-arm64"
      sha256 "d2798cd68dfb2e26d7722349a5f8861ed35db29f2a3602d952f898622e15deab"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.35/zwrm-linux-amd64"
      sha256 "77116e39152b3cba376a7cfa613d1562087f252cba2e96d67c11a3d9c9ffa76e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
