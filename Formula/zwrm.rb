class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.0/zwrm-darwin-arm64"
      sha256 "48f480cd052773c89e39f592ac7eec6bbc422e3b7e309cd62a80f25745f2c618"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.0/zwrm-darwin-amd64"
      sha256 "83cd6fe2d78f8a82bed3d3a0acba5508924197333e06c022e87918d99dc02bd6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.0/zwrm-linux-arm64"
      sha256 "5c248ac45d9e272b4555f37d3f841a10514257ba0ffdc6d18d0dba4a039952ca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.0/zwrm-linux-amd64"
      sha256 "dec45fa23def9eb12e3e15620f50fa3083520d456fa7a0cbcef826699908a4ee"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
