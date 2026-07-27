class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.2/zwrm-darwin-arm64"
      sha256 "30a55d6f61ee1f110163401b2db47298b3ebba6c38500bb5a001ff66c4b89281"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.2/zwrm-darwin-amd64"
      sha256 "5b13576e5d9e8d89c8195506440febc76fb992e9ce8c98a670b031fc842f01df"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.2/zwrm-linux-arm64"
      sha256 "15df0edd6b3f1a297b1ec40409e12684513d3bbe297818e66501ab764b8452a6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.2/zwrm-linux-amd64"
      sha256 "36996381de401046cec0c5c1f605385cbd7e5d011ca62125b0ee3650932c297f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
