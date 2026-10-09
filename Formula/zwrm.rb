class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.7/zwrm-darwin-arm64"
      sha256 "3c41b79bb9970372fc393b5ec03f319d1fabea70d7134084636e50c94761dd7a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.7/zwrm-darwin-amd64"
      sha256 "ab85affee3db0d85c67a76b681625194cd843b4cbcd961493d4f0b8681625551"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.7/zwrm-linux-arm64"
      sha256 "7602d056aafdd735e5373933c093af11feeb3ea15b9da272098054db5d554e0c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.7/zwrm-linux-amd64"
      sha256 "deba7224ec4634fe65b8bfc5d82b68cc0f51a09f87238833a8cd92053f34bee5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
