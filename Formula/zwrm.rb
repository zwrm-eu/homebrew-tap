class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.51/zwrm-darwin-arm64"
      sha256 "20a37b5f7002e7a8a7968dff55897e4b5b5a91510447adf289faff87b96f83f2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.51/zwrm-darwin-amd64"
      sha256 "ad8032caf3ee6ec252435aca8454ffbc6d0da8de5a8f6bc024b07233eb808b0f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.51/zwrm-linux-arm64"
      sha256 "0a03ff8b1df06be7bd0b043fd8539ba79340d23153c3e0b5d664901acacc8924"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.51/zwrm-linux-amd64"
      sha256 "d409780cc51204dc5f480a3b3ac8d0df4eb3822904765da415177709d14d0a94"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
