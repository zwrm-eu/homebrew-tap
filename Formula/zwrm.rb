class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.49/zwrm-darwin-arm64"
      sha256 "7aead4c4ae4852d2e4496f3438fd1675dd2fd0fae00ef3d560bd28c6e035acd1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.49/zwrm-darwin-amd64"
      sha256 "c35a43339b2547ef4fabab3c8ae4a0c72d75ae623181e8eeed7e43374237aa29"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.49/zwrm-linux-arm64"
      sha256 "77dfbad76144ee038ff7e7ced1963a45e4f3d962c5bfeec5c21113e246a755af"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.49/zwrm-linux-amd64"
      sha256 "e8cdbc0e5c43dbb99b2e59f66f8d98c1e72af3450fe58e83ff7018c9945fa3bf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
