class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.16/zwrm-darwin-arm64"
      sha256 "409a0346c922925e9aae6e5c07ea714bc1caf2c900b2a0cd4d9ff44a9ea1763f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.16/zwrm-darwin-amd64"
      sha256 "c70c4ce968a181848affd2cec0232d7d3d4230626a21694cde38ef3b509ad202"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.16/zwrm-linux-arm64"
      sha256 "26ecd82b963b890a1be4d3f35af074dee09c55bdd89d08dbd89d08eedb06a8e9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.16/zwrm-linux-amd64"
      sha256 "b0ccee2a1d0e4d9e9a9c984b676dd8b7dc6ed68fdc8a2477a0baf0427d5c6568"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
