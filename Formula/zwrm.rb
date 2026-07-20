class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.47/zwrm-darwin-arm64"
      sha256 "bb740ed806f73a7a212c719a89e809e8b9ca15c636c40141a097ddd830d90424"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.47/zwrm-darwin-amd64"
      sha256 "857496a876656e3e92933ed28c6804888cd6788db2162ee0dbaf970e206ccf03"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.47/zwrm-linux-arm64"
      sha256 "0d7cc855a8147f2e4efa2f76a40510039abd0c9f9e636e7c04706e9ff3e76d0b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.47/zwrm-linux-amd64"
      sha256 "16236ad4b78d340ebc31faf4fbc0851a580b1e70fb91b826b98c106ce4609c11"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
