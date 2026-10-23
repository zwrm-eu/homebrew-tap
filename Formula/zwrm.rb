class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.12/zwrm-darwin-arm64"
      sha256 "50cbfbba49cbe92c77fc6a9a29ad9f14ee6759029ebbb25503dff114e06e6df2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.12/zwrm-darwin-amd64"
      sha256 "67571ef760805e433b063adb4cf6230a65dbdec146c9cc66f5efd05ba47605ab"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.12/zwrm-linux-arm64"
      sha256 "dc1d066136dcc1b978cc6a23b8f469b6e8f8e18e1eb687671e3ff584944d9ded"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.12/zwrm-linux-amd64"
      sha256 "41d9f10f58f36c9db73359f27fc67e6653eae746ebd1f3184c8ac89a07c1e890"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
