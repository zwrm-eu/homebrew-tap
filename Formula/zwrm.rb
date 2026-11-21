class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.18/zwrm-darwin-arm64"
      sha256 "554de107c3e75b0a4b49f00099d95aa5d72ea6a3a57893dffc37333587730d30"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.18/zwrm-darwin-amd64"
      sha256 "248077645585ce03a56065a2fed09dcecba7d74b8bbe11890637b2688c2912bb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.18/zwrm-linux-arm64"
      sha256 "f7aca6f8ee2f35b4a8a9a9453d884d598db117a057ef7ede51f159a0ed53c239"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.18/zwrm-linux-amd64"
      sha256 "f93157d71191748583bdda2b57864c8da39cb19d896322a767c821b7c812fd4e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
