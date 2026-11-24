class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.20/zwrm-darwin-arm64"
      sha256 "ccf0d02ebcfc41c0515a659a761a1a44d141086d52df898c18cb6100910ff199"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.20/zwrm-darwin-amd64"
      sha256 "f4b30723dd984bb348f392dfc03567a95ce0fa8be8e4aabac86825a5dee28646"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.20/zwrm-linux-arm64"
      sha256 "84822f72a0493361eee62ada69d3afeb040ecf3987e797bccaef2b25ceed6c68"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.20/zwrm-linux-amd64"
      sha256 "84420daadffeb741a43af630f60381ef9f2c1910d43eb86bbfc703c5eeb2129f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
