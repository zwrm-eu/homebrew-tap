class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.3/zwrm-darwin-arm64"
      sha256 "82aa8610c5305a48c7d2c2bde80da49f06b81b0f500416136dc21ff4434c6f2c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.3/zwrm-darwin-amd64"
      sha256 "35a330076ee1ac55558086657035b36c80405c74d2c563eafb3ec10df56ec89c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.3/zwrm-linux-arm64"
      sha256 "16262e56f5d8408519a9a5267739f4dc6d60a3c7300551c37ed7dd28bc46e9d0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.3/zwrm-linux-amd64"
      sha256 "c0d16dcfa62c738ecc1ccdd7d212a9562b5ebd7ed8dc1157b159ed31f7621197"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
