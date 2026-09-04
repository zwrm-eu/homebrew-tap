class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.16/zwrm-darwin-arm64"
      sha256 "cd731b4ccbb043e704a31c167ae39c4eaa0e0b20deaeb6b361621626b8e6cdf2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.16/zwrm-darwin-amd64"
      sha256 "4d8da1e65da32e3b5ed5bcd8d0d046780b469b4b23d8f4146a983f6a6029d24c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.16/zwrm-linux-arm64"
      sha256 "e85184310ce38cf8e8739950e6e17a22b3f3bd55e9fed72f06379aea127f767e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.16/zwrm-linux-amd64"
      sha256 "32c8b3f91844f9d811047d8a784e3f3943ca2dddb706dba7ca9adb02775bd617"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
