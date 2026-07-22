class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.60/zwrm-darwin-arm64"
      sha256 "4a1be0c7ef02b408ebe37c3aafbb851fb49e562a0ba2b4d2d3bdf59ee1ccabf4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.60/zwrm-darwin-amd64"
      sha256 "f89f22e7c0bbf0a32b1065a45c7df04a618f484502deaba5e2ebb665df821f13"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.60/zwrm-linux-arm64"
      sha256 "7aad8dcb448b34f7d0071129badd620bb5604251d3e04ca6162f9f2b69563e7b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.60/zwrm-linux-amd64"
      sha256 "5f22102e5dfae32c72f14d46707bc9ff6f0ee0bc46c4759e618bededfb5f5a58"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
