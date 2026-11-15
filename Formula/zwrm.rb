class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.53/zwrm-darwin-arm64"
      sha256 "9d5bd3e358c1d23d4aca0e0afccd92bd06071ec508a240f353437b37c5ada365"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.53/zwrm-darwin-amd64"
      sha256 "0f789bf8256ddca3cd438032827ae5336984d0dcb0c5029ac9523a278a463bfd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.53/zwrm-linux-arm64"
      sha256 "09a87a588fa1344aaf72e4744606cbfe7adb2c2d34c74d4e22be9d454d7cf240"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.53/zwrm-linux-amd64"
      sha256 "7a6c6493695bf1290d14fa4537ee180eec84f13f1616a02fa77a34117a6f2e80"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
