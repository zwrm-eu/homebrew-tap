class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.26/zwrm-darwin-arm64"
      sha256 "cd61b0a5dcedde8d19d5ea5f0248d0154058b2fd764a17a75474cf39a31c29a5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.26/zwrm-darwin-amd64"
      sha256 "906f79dda2ffe475cc933429d9f86773dcff7906c8f6577a6a2d56fdc4d0798d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.26/zwrm-linux-arm64"
      sha256 "7eaec0bd0f7d1e61f6c650770831176da72031990dc61787892ec01960237c08"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.26/zwrm-linux-amd64"
      sha256 "e31ab818edd7cc93ce7d883cb06e00f9205b63a19320ecde0a747e258c4ca0f1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
