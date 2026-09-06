class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.17/zwrm-darwin-arm64"
      sha256 "093d0740729510dd306799576e3660111f622115c93c341d2abad5ee22b30404"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.17/zwrm-darwin-amd64"
      sha256 "af5da9beebc97b5ab260bc03c5fe0a172a1ab9e721dce3b1e652f75ad99d6224"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.17/zwrm-linux-arm64"
      sha256 "84f720bd579db3c271332d87d5544ea1ea9ff817f57a77244a7344cddae6ed21"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.17/zwrm-linux-amd64"
      sha256 "9fecec821c5755ce122eab47fdfe3186689385c28a584a90c39871cbe3db6096"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
