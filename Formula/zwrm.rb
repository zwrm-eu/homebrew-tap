class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.1/zwrm-darwin-arm64"
      sha256 "d24f04d686fb836c5c8591262cdb215c7e08f0c3dda318f37aba3803984184ad"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.1/zwrm-darwin-amd64"
      sha256 "71fbcf29816e38b855a00db1b14b4bd6a89f72234b924750660881508cbc6621"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.1/zwrm-linux-arm64"
      sha256 "ae85f54dfd8370b35893d32d08bd8912602e7a505d5e26575e018a35071a7792"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.1/zwrm-linux-amd64"
      sha256 "b361cc2eda984009a4b4f1b9d39fc85dc51e43ee539f323455c11ae2d975ad24"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
