class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.50/zwrm-darwin-arm64"
      sha256 "2e45a4959c2f1b5fc963c86707e24d05bbcf590f6bd3fe4982ed57fc84840d5e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.50/zwrm-darwin-amd64"
      sha256 "b11334862c685ef6ef83f8fa58259331c3cecb5d64e29f0b2be4748234ff6e44"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.50/zwrm-linux-arm64"
      sha256 "7579751729e45279433413097336fb527990eafa52fd91c3373706c26fe36331"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.50/zwrm-linux-amd64"
      sha256 "2b79940b745fdb417e505e7a43d6478c2d515d64e8af68a8786d7652746c3507"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
