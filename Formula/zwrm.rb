class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.0/zwrm-darwin-arm64"
      sha256 "c772eef955c1687cbd6c3faac87b820d9540e721f101a58338129d53da12f175"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.0/zwrm-darwin-amd64"
      sha256 "a352c4fdb621c77d03ce7efe1db269b6c4f08ecb4cea9fe79fbff9ff60fbc1e8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.0/zwrm-linux-arm64"
      sha256 "4dc63f78d2dd4fadcbc22051af6d46cdb67ffb8e65009c4c4ebf49adc8ab0394"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.0/zwrm-linux-amd64"
      sha256 "2206933bcae14445d15920a0d10eead22f3bd1f536aabadf3cbd5b443c66a6fb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
