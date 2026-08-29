class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.8/zwrm-darwin-arm64"
      sha256 "2d8666cea884bc9f81c6914d886e870303841e4fe35e056cd84f3906ed2c3ab7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.8/zwrm-darwin-amd64"
      sha256 "0f7202df05127f7622257272abf957d9d9ad5d262f6eb3a631a4f04c6d7d169c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.8/zwrm-linux-arm64"
      sha256 "95934041f47684283fb21587b540e0972b48627b4d1b62c906c260f6ecd19689"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.8/zwrm-linux-amd64"
      sha256 "0b900f70bcbcbc12f61044771a55782ba93bbbad7df434098a352dcc352d4fd4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
