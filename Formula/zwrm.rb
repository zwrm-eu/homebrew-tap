class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.24/zwrm-darwin-arm64"
      sha256 "8341ff9aaab2bda0ba2dd0bfcfa1f20a0113f12e6aad7a0bca7e28a474452f28"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.24/zwrm-darwin-amd64"
      sha256 "8f47585d82edd40db751c0a30f1dd956a0fa4c235cdc5d7bbc9f07fda4115f6a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.24/zwrm-linux-arm64"
      sha256 "622b596bfddd6fe2260fa968690c6af5fd4d3fb712f057e89402d7a6d28795f8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.24/zwrm-linux-amd64"
      sha256 "c9b3644151c13fff42d700ffb481c45dda834ba15c0c6e7bf09eee77bfb7a49b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
