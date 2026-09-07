class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.0/zwrm-darwin-arm64"
      sha256 "ec19bfac1c4ce4190947004b3357740f33236dfbb125e9e30b3e75a123fabd8e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.0/zwrm-darwin-amd64"
      sha256 "bc1f0b7053d0e999702165b8be9f3b17b37f120bf685e123b87c3856d096a23b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.0/zwrm-linux-arm64"
      sha256 "9b38b0a4d0de1ffd09f13f2ed926290314334a249d0504f57547399838fdb62a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.0/zwrm-linux-amd64"
      sha256 "ad3528199633dd544e5276d14d3133258606463e4bc35d3cb5f89e5643003bd6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
