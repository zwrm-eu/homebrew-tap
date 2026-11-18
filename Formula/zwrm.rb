class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.2/zwrm-darwin-arm64"
      sha256 "79c4520f0b1232d0fd10056c7d70dc73800900fc0f5a4ecfd021625d0a8d59b6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.2/zwrm-darwin-amd64"
      sha256 "e4fcbdbb2fb182cab01b55616dd07ca81d97a85c16e666ebba1762fae081d139"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.2/zwrm-linux-arm64"
      sha256 "ceae3c8da3871033e8d92d9dc0f2cd37fc6e72ff60697c0bb9a33d6b84b56d80"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.2/zwrm-linux-amd64"
      sha256 "a6c147a749f55b42f5c6fae07acb2979d65c14c31967251036fed4558a7a9351"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
