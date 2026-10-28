class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.5/zwrm-darwin-arm64"
      sha256 "1aae40d25b46067f8abeeb0040595a2ca283f980ee594a66bbc60854b774ab2f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.5/zwrm-darwin-amd64"
      sha256 "3ac851760f4a9ab4673db1f868368b0d9d92c464519846de11662257d49910f1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.5/zwrm-linux-arm64"
      sha256 "1649494179932f36f8bb4be72a98f60a58036573e2d646f0ac3c68edd095c314"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.5/zwrm-linux-amd64"
      sha256 "49d0cf6a83f761d1c7baa809dfeb6c1994dfede6f74cf7e140448e43703ad6a3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
