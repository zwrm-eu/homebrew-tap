class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.41/zwrm-darwin-arm64"
      sha256 "224c693dc4b55f8b0c0cca1f0f20d0e506270bfa99806f4d1d9e1d33a8b69a91"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.41/zwrm-darwin-amd64"
      sha256 "f0c92b59003fd0259de9c0861ee3924369841917088ec2e971197e1552ae93eb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.41/zwrm-linux-arm64"
      sha256 "38fecdef4239e9623d1d0174b27ae0d11fcb2b4b129835fa6877969da9e5c14e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.41/zwrm-linux-amd64"
      sha256 "f447fa2547e6f5277924ce2c178867befbefa131c427b94f481df68884618a19"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
