class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.6/zwrm-darwin-arm64"
      sha256 "eb37a2533e8c2f424c711719476520fed0082ebda722fd2ed9f96f15f340a1a1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.6/zwrm-darwin-amd64"
      sha256 "ddf981f67d5479ca1e806c1ea66b0e27f8196f57bb81d8bdfecb3f14bbcd3a32"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.6/zwrm-linux-arm64"
      sha256 "9e2f12e3c881d9a00438af94bb27dc3eb00c7588c367271154dfe7cd81cd7859"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.6/zwrm-linux-amd64"
      sha256 "e0ad59c1f96734078a5626496b8483dfd1d0edfd6c74d2644fcfb83fce596f39"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
