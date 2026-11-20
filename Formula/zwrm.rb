class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.8/zwrm-darwin-arm64"
      sha256 "d6a50e6f76374e3c7deccb5c375791bff37e691d520ddc30e35edd1b8df9815c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.8/zwrm-darwin-amd64"
      sha256 "1de1d8ad4ddcdc58cf3c97eefbc4701c375b3b6ee7177ab3b820335af2bd2933"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.8/zwrm-linux-arm64"
      sha256 "4a1862956ae4f33215da46a897bd08087a3db2217bb0bed9b56520d3d82bba4f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.8/zwrm-linux-amd64"
      sha256 "96deece8b5cefd701760e61ac01ef6085a91970602aedd1dfb25139404819871"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
