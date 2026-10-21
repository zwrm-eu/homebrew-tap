class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.4/zwrm-darwin-arm64"
      sha256 "e418cab03268bb66481ae3978ebfbd238e1bf4bb0a67ec4b992d05d30ca6c533"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.4/zwrm-darwin-amd64"
      sha256 "4f2c545f4a8cc173bf5ea43991e84862babc745cacd8fb838cf4e44c6bc047d0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.4/zwrm-linux-arm64"
      sha256 "a328e10848e47b53a97152287e72ff94414dc99c66428388c664fefa0fce4804"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.4/zwrm-linux-amd64"
      sha256 "f29513dff865e7dcc5d07b3351b592de988b135e6205dc3c7bb450a332a1293e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
