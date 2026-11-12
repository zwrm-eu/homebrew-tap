class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.50/zwrm-darwin-arm64"
      sha256 "b5d3a682fb32bc6507ceff1b7a3061e24574a18b0e9d2a593cfe46bc4559aaf9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.50/zwrm-darwin-amd64"
      sha256 "8d0576288ff0bdffb5800461c510fb81324e05babcb409d1eb4f16ba0f037599"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.50/zwrm-linux-arm64"
      sha256 "9302d1a288ee1fd2b34872ad482bd7604d3af2b4fb65c43a2919612f96de7256"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.50/zwrm-linux-amd64"
      sha256 "410f479be34179ab769929c6dfca377bb0d22599abf1f5ce0f3a92b6621f7632"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
