class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.2/zwrm-darwin-arm64"
      sha256 "379432b375db0caadc6450d32239603b868f5f9e4b7fb7c22da6c0b6b25bada4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.2/zwrm-darwin-amd64"
      sha256 "2ab33c53c1b269d96ec11f7edadeea608e48434f300bfca2a6d3c14ce81a2c7c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.2/zwrm-linux-arm64"
      sha256 "bafec047481b2c8b07482c783525ce071c269f0affe965f4374e07a2529057a1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.2/zwrm-linux-amd64"
      sha256 "3c8a5d9a1e27ef7f717fec07ac45378c76f38e0a1744367aa9fea91df59277ca"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
