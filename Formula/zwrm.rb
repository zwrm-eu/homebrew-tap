class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.3/zwrm-darwin-arm64"
      sha256 "930e24b57582e872780b626d4b361dc64285090b2630b26996b5409af5c2e16c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.3/zwrm-darwin-amd64"
      sha256 "b0732caaa0f96949d984809c36adb9a60f2a3fdee98b079ab6d804f73d612b39"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.3/zwrm-linux-arm64"
      sha256 "388fe1ffd7bead8cf85c47d52e58e3b5335303e64d166fb62d9174863e04c57e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.3/zwrm-linux-amd64"
      sha256 "a3d006b1b2182b4cd33f416da3b7526f91ea794659d354981057401ae90d7686"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
