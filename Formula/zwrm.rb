class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.3/zwrm-darwin-arm64"
      sha256 "e934c94187cf0017729a8b75ca369dca87469ea1f9d1d62aef6118ab86953ebd"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.3/zwrm-darwin-amd64"
      sha256 "279e6ec172f928076b188166d6f61f955df80e1e441741a1f0d68eca4b78e5de"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.3/zwrm-linux-arm64"
      sha256 "19880e912754bf78c539b03eadd129d6544f8031d31f47f9b7a8b2b37a39119d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.3/zwrm-linux-amd64"
      sha256 "11fd202b59460702fff4d6324d5f1eef414e1339348e13251b96a6ebe82813a3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
