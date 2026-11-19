class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.5/zwrm-darwin-arm64"
      sha256 "c3a2d844820790d8e0abd1478eabf5b06daefe0efbe0dd6dab9b3efd997b9526"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.5/zwrm-darwin-amd64"
      sha256 "513475a3574caaff3ea0a337c2029ee86b9018edc7354e04a6495202625bc9b4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.5/zwrm-linux-arm64"
      sha256 "1b19f3be2d34a34b4b61fda4206bfdc2c74f0550dfe0d146e370463a746d4fc5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.5/zwrm-linux-amd64"
      sha256 "48c996963e2f8b94c91dc9b022ee40c2dfc03595235bb021c5f8a9828e339485"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
