class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.17/zwrm-darwin-arm64"
      sha256 "82102a9e53ae2ad4bed192255432999a51d44c761c6eee486832d70d443c8fa4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.17/zwrm-darwin-amd64"
      sha256 "f0633dcce5c51de9539e371d85c3a63853d025dc88cc53aec1b160824ad9da76"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.17/zwrm-linux-arm64"
      sha256 "e0f9d08675a57e73adc6d01b5e801e82754d3d2754904df2d3cb7f185840432d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.17/zwrm-linux-amd64"
      sha256 "95df621edef9e5e50fde5a98bd5d27eccdf5a8c1e8d32a67213194f02efaee1e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
