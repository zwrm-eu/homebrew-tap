class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.18/zwrm-darwin-arm64"
      sha256 "4c9d5b4464ca29a75db5da10ff4de5e65665661fc5e8124094400492c503ac9f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.18/zwrm-darwin-amd64"
      sha256 "49b9734305c93b8cbe374978dd9b359230e5fbb633153aa86630555475f345c9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.18/zwrm-linux-arm64"
      sha256 "2743faff17362a919364f0d1bf9a258e7f1c8a2298d65637b0ce0345e749104c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.18/zwrm-linux-amd64"
      sha256 "b9e97c0f1a46b704fb5d6e853b0076f98a90909ce6eeb5102ed14866e7531b5a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
