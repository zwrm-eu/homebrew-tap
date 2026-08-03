class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.8/zwrm-darwin-arm64"
      sha256 "d3a75d86b04bc7db5c8c75cad911298c26d440dadf2789cb1170aeae1124d479"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.8/zwrm-darwin-amd64"
      sha256 "5ec458ebd9df19739a7c9453d18d4d5dae9740850a8e9e916b72f5fe1e89938e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.8/zwrm-linux-arm64"
      sha256 "ebc03fd803a6d730fca9621f44816ef75ecea0281a0d06ca49dd9b276010ad93"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.8/zwrm-linux-amd64"
      sha256 "f3b0cbfa3b90cfc4cf4270b1af3e6966904c8a6e39d257fa5a879dcd4e88f6c3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
