class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.1/zwrm-darwin-arm64"
      sha256 "e591e560250e5a5d8d7056ed93a12b5c7b8bb4bcac8676476252c8f4403aea44"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.1/zwrm-darwin-amd64"
      sha256 "3b51ebdba1e16d50ff11634f17ee9346af76052540e9c7f26f53003ef1b7b0d3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.1/zwrm-linux-arm64"
      sha256 "63b4d6c32eb151a26d1be52877a856e4f6fb49cf3aad76e8be62ce0ab732669b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.1/zwrm-linux-amd64"
      sha256 "a7e4290498099df6cfa7bf6626fc00f9b30a3a3d2e54b7a62d0d67cb3801034d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
