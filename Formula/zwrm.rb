class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.22/zwrm-darwin-arm64"
      sha256 "fe30f86c0aed0b0c9825b4ea96ec914ead263608a1457de1eac4ea586e37bd89"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.22/zwrm-darwin-amd64"
      sha256 "37813250d84a93ba086f72351cac6cd2c9a492f7b4a71a1d28cf1e8bd5cdf44a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.22/zwrm-linux-arm64"
      sha256 "1703edfc927d0551d3dcd065431395bb3b0b202b79443d52f6739ebabd7069b6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.22/zwrm-linux-amd64"
      sha256 "57f15a0a7149efc95d7a24d34c59ccf56a6048cbb873f590378975e419fb7a09"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
