class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.5/zwrm-darwin-arm64"
      sha256 "cc98371d4b961083aa4b5a6bfaec0941003034e5c7f5e5ea023180240d6e3796"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.5/zwrm-darwin-amd64"
      sha256 "bd81a2c3c239984a98c0adc99948a15ad99f53642cb259cdfd3655ffbc9695ba"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.5/zwrm-linux-arm64"
      sha256 "96681a6f73279d18c3ce349fbcc81c41aebdd26b94579e4b4c273196e844b9c0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.5/zwrm-linux-amd64"
      sha256 "aea2a47005c0ebf13f888f83ea169eb3f6885b6c59d0a5a407e131b7fe501779"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
