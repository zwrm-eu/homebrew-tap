class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.38/zwrm-darwin-arm64"
      sha256 "f175cd4a5af7dcd8aa6722b1c3e4eec2a6ff51ebf487882b7dc05498c967c9de"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.38/zwrm-darwin-amd64"
      sha256 "63d8fe988295afaa2274c0f1ccb1b7d3d4aba5841b06a74b96ffa4b7d7244b79"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.38/zwrm-linux-arm64"
      sha256 "cd8e177bd37b3d5a09f13f84302ed7018e0611df63df457d31d74a3440888213"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.38/zwrm-linux-amd64"
      sha256 "b9397c45e889d4386979f4bbeed8e1d37862949a283ff4f24ee2d6f9c27ad4e4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
