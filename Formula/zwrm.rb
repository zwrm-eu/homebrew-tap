class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.0/zwrm-darwin-arm64"
      sha256 "70a26b6b043c480ecd34f68cf6cb452ce9f15211477e09a6f393666978077291"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.0/zwrm-darwin-amd64"
      sha256 "71e07d23b59310137eb1157dbc8f70bfe5df24def65ff6a303002678b6a71b6e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.0/zwrm-linux-arm64"
      sha256 "502f9f97ee9b8b50d55bbd8c033d0c17bf0db66a83457a4061fd4b784bb57f72"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.0/zwrm-linux-amd64"
      sha256 "47339cb9022a9e0c6b3bb6dcba9c7d5bc5a396d6b9acb69a72974a7a6034d6e2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
