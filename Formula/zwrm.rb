class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.4/zwrm-darwin-arm64"
      sha256 "a38e8a32adef070607a1fbfaa33ddff764ea86000d249d2bf3b43312a1e5dfb8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.4/zwrm-darwin-amd64"
      sha256 "939757a5728f679d74901f0106ed9d119a0386f5d69d01ae03e014ea39cd1fb3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.4/zwrm-linux-arm64"
      sha256 "fa135b921a3f8f24dd29b533e2077c6ee62fa540219ab29ab730252c6b7faec9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.4/zwrm-linux-amd64"
      sha256 "7c415c1003cdb3c3df6b2248a61090d044134f107367c56b0693f22296f65067"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
