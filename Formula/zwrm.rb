class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.42/zwrm-darwin-arm64"
      sha256 "afca530d486365aa15c94c71e22581c38a1164e91564c3ed75c31e52e5b2bb82"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.42/zwrm-darwin-amd64"
      sha256 "36700f20be653028941e6a28d8bde8c826f691c0edce744e59441627fa4bf232"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.42/zwrm-linux-arm64"
      sha256 "6665c7e86a3fcf52dbe97bd9d731a20e94f25f4a1f44103c3fe353ce22e0a512"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.42/zwrm-linux-amd64"
      sha256 "11739c71f4b865a434d0c41132e666eec098a220a78d7faa20100f7bb0c86118"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
