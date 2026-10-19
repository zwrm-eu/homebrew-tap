class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.1/zwrm-darwin-arm64"
      sha256 "b7859f9972cb92bcf070be0e250adef05d00b42306dea8f3db0483440f10d036"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.1/zwrm-darwin-amd64"
      sha256 "f52e85eb967849e7da5fabed14b4cd23aec5016cd8bf4808af9f5e6bf273e994"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.1/zwrm-linux-arm64"
      sha256 "6ce086b0b82c95a86ecf0cba8649a14d7fd57d929b392f3d092516daf3f9fd0f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.1/zwrm-linux-amd64"
      sha256 "c85d5c473d4c43568b70caf3629ac22674489c67c4aadffd543101835d29496b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
