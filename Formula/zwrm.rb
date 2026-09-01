class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.26.0/zwrm-darwin-arm64"
      sha256 "e04b9196ff1aac3b94ca54ffb71eea0b7b5bcb55e26238ebc50b86a46c57be9c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.26.0/zwrm-darwin-amd64"
      sha256 "3d776296b0cda8df128d8f158005779f0364b28cb53e377a72dc2c0de1ea58d9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.26.0/zwrm-linux-arm64"
      sha256 "feb064451f89abc6b28543e385f40321a2fe37f3e1f10847fa46228967798ef8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.26.0/zwrm-linux-amd64"
      sha256 "a96ecef2ee7fd32b986c33f5068dd0bc06d9c5a1e69bcbc4cc4afce0d59d64a4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
