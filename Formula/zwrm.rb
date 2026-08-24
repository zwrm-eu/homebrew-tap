class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.0/zwrm-darwin-arm64"
      sha256 "9227899105fb7bea142205ff2be9d5afb25e34b820d7ff1ae43fe6c65ce53881"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.0/zwrm-darwin-amd64"
      sha256 "f458f59250069217a6efcce4efeee4a17a4d769fe63c50b5de2b6eb33c204dc0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.0/zwrm-linux-arm64"
      sha256 "a7d24c7faf8b9e68f3dc26f1a262a1e84e6c0a2a3e29d014985ba0749640c597"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.0/zwrm-linux-amd64"
      sha256 "4ce02b9ebb38a7ca1e271176a76cb27cf061e9fabcbb555074eb0e0984ed93b9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
