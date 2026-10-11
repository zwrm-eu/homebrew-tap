class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.17/zwrm-darwin-arm64"
      sha256 "eaef4f11231c9bb69762520590816617aec57fe84d5a1b01cd4800ccff3f74d7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.17/zwrm-darwin-amd64"
      sha256 "23624519c25fd7c62809a84dbb7ab26c001c62a68e35a7bc7e836edf1a82d3af"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.17/zwrm-linux-arm64"
      sha256 "477dc851250316326868ac98a5313d37e9a70d4c43917957e30d0cc2393cc17b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.17/zwrm-linux-amd64"
      sha256 "2ca13da5465e88e9548b3b8e75c71515cca63d1accf7a99ec28486dd447b5cc2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
