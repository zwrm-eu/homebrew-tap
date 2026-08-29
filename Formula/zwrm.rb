class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.9/zwrm-darwin-arm64"
      sha256 "d6d688e99487d1b4b337d67a5d60154806ee4434b9bed7716305cb3b4612621e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.9/zwrm-darwin-amd64"
      sha256 "0c410957bc7ffa4f20f72500330adf89ffd16ea62ace8b03d65b42cfe6cb9d98"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.9/zwrm-linux-arm64"
      sha256 "e8626b7a6a7a183468b3397ecf9f7d144ca47fc2c36d96a39f45d3694f5982ca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.9/zwrm-linux-amd64"
      sha256 "d0db4e0fdda94f7e767599741dfc86beb5e5943c5cfa9c9cbd858590d51f92dd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
