class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.5/zwrm-darwin-arm64"
      sha256 "e313c4ef1007538ee0cd107e2748c1fc919bc493ccc8b11c7a72740a7713e5da"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.5/zwrm-darwin-amd64"
      sha256 "4778b0d7fdad4862fbd9ac0fc69eede6dd47c3b4b5c17759a95a1ca49d297283"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.5/zwrm-linux-arm64"
      sha256 "b06a8aaa2dd404d15e57b0f7b007a8e80121bbbeab4e75bc6fa962307178a7f8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.5/zwrm-linux-amd64"
      sha256 "877d082a95e048181baa2cdc7e1ec4799f6aef3a9d4c7d93dfb89b1933023f2d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
