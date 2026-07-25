class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.2/zwrm-darwin-arm64"
      sha256 "0dd2829c003657f08e21e083993a59fc1bc94dfb2d21a49e26a8707d5b29fdf2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.2/zwrm-darwin-amd64"
      sha256 "6b91021983760b66a13b80324134a01ee4981e98288861106e7f6f0dbe88018d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.2/zwrm-linux-arm64"
      sha256 "a27d68d14ac45ec86341fccc85c5e1c207137d1208b5500d1e2778cce48e1d20"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.2/zwrm-linux-amd64"
      sha256 "0569b1b7772f48e4ee6963c9e3fe8b8c336f5c625abe341ab948e5f4f99c8bc4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
