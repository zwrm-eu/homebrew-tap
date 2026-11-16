class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.0/zwrm-darwin-arm64"
      sha256 "13e7bba883c42b75a192ff7a6df0b77d0059eec965803f06a22d6bfb5a90ef94"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.0/zwrm-darwin-amd64"
      sha256 "b2db648003ebb0f8f9739c04b0f02a4c07168341cd32d8d16e1e65f55de0bcf2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.0/zwrm-linux-arm64"
      sha256 "eb98161733c747899d1fac345d3b2b3aadc1b1c30c15b563a4586c6c1aee2c91"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.0/zwrm-linux-amd64"
      sha256 "2ac76ee2c99e7d2267318cc4bffd26f6a55c7a5abddd5790677c01f7ed10731b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
