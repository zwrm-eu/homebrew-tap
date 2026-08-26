class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.5/zwrm-darwin-arm64"
      sha256 "0279f99296baad6265bace8c1cc601649805ebe55f5d5984813b44084f6c7583"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.5/zwrm-darwin-amd64"
      sha256 "ec5033a7ccf0ebc23219c2c15bb949cbf75e1bce14b1e98b46fb232f6dfbba3c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.5/zwrm-linux-arm64"
      sha256 "02cb2f5ae9a447f1ccf396e2eca25662bc42d8a85deb8102b6fb644fd9997dcb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.5/zwrm-linux-amd64"
      sha256 "12362670b69b9ef474889860feb22a3b64d58f4ded728c25d410ae8b676c513a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
