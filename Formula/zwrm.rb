class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.16/zwrm-darwin-arm64"
      sha256 "080cea8ffcb09da47c259a0db79abf9e1b8d31bbef9ed7e7648f48211a17d917"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.16/zwrm-darwin-amd64"
      sha256 "f9fa1681b2d27414b8e5746427ffeb631e690814f14a32a630d8f0f4b51985e7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.16/zwrm-linux-arm64"
      sha256 "b59b2460c11c90cd9a50668876597a77da4ce596cebd3054bbb156e5c3c47b82"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.16/zwrm-linux-amd64"
      sha256 "aaa384c2799d7e8eef8d387f4881bd0cc7591ddee82b3d2f68aaf14a12a79a3f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
