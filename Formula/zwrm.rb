class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.25/zwrm-darwin-arm64"
      sha256 "d909828e15e16c1f334ec55d17ef7242172739b65d93c8b09935abeeaaf28f1a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.25/zwrm-darwin-amd64"
      sha256 "0c026449015a1c8008f27605a8f71a7823b4d94cf8ba2bafc0b2fb55d6b5d8eb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.25/zwrm-linux-arm64"
      sha256 "053a132846da9e004d8ba1ee04a1303c2e93ad1301d79a4f8f2e3156634cb82e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.25/zwrm-linux-amd64"
      sha256 "1a8a5100fdf568396e90576325603fdeec87a8507348c14a1641bc03d4791200"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
