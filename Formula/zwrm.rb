class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.5/zwrm-darwin-arm64"
      sha256 "633cec027e883ce3c2ecca6db86be26ddeef9e82694a0e120f36349dbb998994"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.5/zwrm-darwin-amd64"
      sha256 "17d1c4eb37535554ba7277ba934c22e690f86a689bf4f2062deefcda43a43582"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.5/zwrm-linux-arm64"
      sha256 "3d71bec92e7d94d0793119e58ccdce76358c3e5d04ac238a97c93a3128c26cea"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.5/zwrm-linux-amd64"
      sha256 "4ea1b7bb4bc706140463d59db8cc9717c8263355aef418a0f85a35897ffb46e4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
