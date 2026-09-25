class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.16/zwrm-darwin-arm64"
      sha256 "fc54702cd43c5ef3e956aa5560a74a9f818679c5e410dbf3790bdd36127b0c58"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.16/zwrm-darwin-amd64"
      sha256 "91490d13a87314834462cbeabedc773e0a92a33fb42f5da20d518a318e62e87a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.16/zwrm-linux-arm64"
      sha256 "f69b231fd06ed1e982623077b00599a5ae00e0f017cdd328671ad78f6bb4a65a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.16/zwrm-linux-amd64"
      sha256 "1963e1912ecfd85a128a0c0a6834b7f8864111bcbe06d404dfc07a98a7524cb3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
