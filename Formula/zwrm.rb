class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.2/zwrm-darwin-arm64"
      sha256 "9260e8a646c95d6f107d233db831a8ead2989210822da299c234b4d739f14f56"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.2/zwrm-darwin-amd64"
      sha256 "29a893d2c2975b2c6371828533488297f5fe851b11db27965bc2e90a9edd0893"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.2/zwrm-linux-arm64"
      sha256 "439d5f2642f8bc7aeb100aab1f5a3629e488d8152426061b26aaeaceaa11522c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.2/zwrm-linux-amd64"
      sha256 "fe42b061a8f08b66a953bc4f5c4f31decad52f5a55293eb7f8ab37fe82d6ba77"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
