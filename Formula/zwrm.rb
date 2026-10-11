class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.16/zwrm-darwin-arm64"
      sha256 "fd5d68aab01fe504a8e632104dd1bd3b4d8d297ddd161ffb03b45cefa06dfca8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.16/zwrm-darwin-amd64"
      sha256 "86c41a37f4c8e96985d65063f750c5f6be7e3380d30651b54816c1dce4531eae"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.16/zwrm-linux-arm64"
      sha256 "58c214c9cbec7cdc4a8e3dcddc70915ce07bb2fecffeed696c57aca4ee6c2128"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.16/zwrm-linux-amd64"
      sha256 "51683322f1db68a1532010e1ed1fa4a6e2f7118cc497369bb10b0a1828890dc7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
