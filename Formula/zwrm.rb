class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.2/zwrm-darwin-arm64"
      sha256 "24b60f49d70897772415c9e36aef4ae925281cefa82d83133cc965c0dc121f6a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.2/zwrm-darwin-amd64"
      sha256 "f3e33b1ed8e8bbf1ffe370e45983a5f2f1ba6a9e5cc11054672629adbdfc0b1b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.2/zwrm-linux-arm64"
      sha256 "95ab54d311bab07fe642145a129f2816dd23de904183b0f97a47271b85b12be3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.2/zwrm-linux-amd64"
      sha256 "7a62f4acc28a4f65f43f390f1c41bd0063aab4c5610f2b0da270292bc5a4ec30"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
