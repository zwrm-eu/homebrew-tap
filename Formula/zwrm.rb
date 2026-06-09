class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.6/zwrm-darwin-arm64"
      sha256 "08899cf63a759f40a5560d98a979ec00c968fa10c17c2a7be1a2bfa9b0351f26"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.6/zwrm-darwin-amd64"
      sha256 "7750675b059515a80267284c6ee7c73b2ed03e9ec80146b53a68379d54a1c2ca"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.6/zwrm-linux-arm64"
      sha256 "df70bb5415cf6dd8ffd6f34e4548e818297c914ac07e40eea82c5becfe21822f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.6/zwrm-linux-amd64"
      sha256 "401d94e2add00154a281d29e77bf51725dbe561881f8821b4e2df6404ed7fb54"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
