class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.2/zwrm-darwin-arm64"
      sha256 "5fd396d61f6ccd1a355679615d99b8fc2b1ed93248ca9a2bc0ad73a7c6ef50ea"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.2/zwrm-darwin-amd64"
      sha256 "b582ebf08cff54975b2402e55aa0e1b2af41fe9c0b7835265b332d83ebccb9e5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.2/zwrm-linux-arm64"
      sha256 "4209b766f16983a8cf0de4e2985735c17caa741477a37a3496e7bc38e1c756e2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.2/zwrm-linux-amd64"
      sha256 "71e17f50e00e928f2610afcb1c6df5f566bc19efb282a9a13915e10051a0fa83"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
