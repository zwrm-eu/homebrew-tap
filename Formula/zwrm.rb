class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.2/zwrm-darwin-arm64"
      sha256 "cb6b6cb9f7baa1ef74f5ec57ec825cccd8042dfe338e158e0a5cdf54ddcaff4f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.2/zwrm-darwin-amd64"
      sha256 "b15d345ad880055bb85fe3f018372149fe554ab558f3756a7381982fcc686eb5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.2/zwrm-linux-arm64"
      sha256 "254dc25b49350a34c5090a8819679ec8abdd0f48fb2c179f7c8e25b0cccda58b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.2/zwrm-linux-amd64"
      sha256 "9218fd25fa443bc15c9e9763cfa4e750c8c45e43823815373d620ffceab4e72a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
