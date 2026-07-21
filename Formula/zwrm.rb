class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.55/zwrm-darwin-arm64"
      sha256 "4b8fd8aa8df276763023b2848ffc0dec9fc0701de217e17954da9f326afe88b2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.55/zwrm-darwin-amd64"
      sha256 "5c5006acb51bf455ee2ff57901316b282c162294cd69a566a1f987fa8fde437d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.55/zwrm-linux-arm64"
      sha256 "f6e26e94ed0b98b08f1b99b08d84501b5d607aa40cc6b5637d339e47bf68898d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.55/zwrm-linux-amd64"
      sha256 "5872a5ad9e685bfca9794076547147e798387901590461913d5ac12c39127ec3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
