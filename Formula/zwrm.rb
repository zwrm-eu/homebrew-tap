class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.2/zwrm-darwin-arm64"
      sha256 "38350addcf7074f780a802bf1184ce802984f47b7ab044c268d5f85b01ab862d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.2/zwrm-darwin-amd64"
      sha256 "2ead7e2ce04124abf38c68fef3a20cca0c059252304a3f0eadf93247561e3d7a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.2/zwrm-linux-arm64"
      sha256 "a81da552db8dad7404b67e8c4c62b168e397d158757eb71a26501f4180b9d29c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.2/zwrm-linux-amd64"
      sha256 "01cc7f1b595742e6ff38d509ce9c674746ff90b6ec6a05c3a4d3c2a1c4b84a0f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
