class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.21/zwrm-darwin-arm64"
      sha256 "07bba0648be5b15627d130d52e113c298d697a9e365250f883e9dcc985918797"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.21/zwrm-darwin-amd64"
      sha256 "6608d4a110a911dc843047bb88ef4ddeae4aae21e70faf0a6c149fc0d9a29cf6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.21/zwrm-linux-arm64"
      sha256 "91ddf5f7a4a3b8c1b015ac321599287e47693ac0b020201389049270596b29c4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.21/zwrm-linux-amd64"
      sha256 "55ee8f83592c63fc6ff6f39aecc4f15c0188a2e69ed0d20e915e35db0a2816fe"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
