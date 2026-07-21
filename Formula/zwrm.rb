class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.53/zwrm-darwin-arm64"
      sha256 "54019e6cd0324cb92d9182d90ae5c69461a6825b62c483767a83894fa73991d5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.53/zwrm-darwin-amd64"
      sha256 "225a1e747fa3b7a4c1f89237ed26f2d09c9a3e5b284b27b21f9fd070c56a0960"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.53/zwrm-linux-arm64"
      sha256 "49aa03419a8a96bc0db7bede494df77e8f660cfc0532bb0d27b4fa19ebf227f5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.53/zwrm-linux-amd64"
      sha256 "e304efecee228394637c034293c174d060ad949976f5a8107f865926ce64721f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
