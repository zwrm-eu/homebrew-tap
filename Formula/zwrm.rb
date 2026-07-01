class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.0/zwrm-darwin-arm64"
      sha256 "5c15505b1da1ce72d6489c2be1316fe7e460f4a9ec23c4b455c3aefff7e581d5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.0/zwrm-darwin-amd64"
      sha256 "58712b383ae56b963d2b07f21027eb8fb5bd3792212d7e6f6fe6bea57047e0f3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.0/zwrm-linux-arm64"
      sha256 "fb345f500017c15b86dec33655867fa69ce4fab1a51fb19308b7ff5d11732b5d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.0/zwrm-linux-amd64"
      sha256 "8cb76a9041ef4b3ab5e94dc39e26cc0d30c3be76c9282d0561e2fa584de58c11"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
