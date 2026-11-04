class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.14/zwrm-darwin-arm64"
      sha256 "7f899314f603aa941fe9096f5f5ec37c9a1ffdb159fa0c43a2302bfb4e2bcd9b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.14/zwrm-darwin-amd64"
      sha256 "d678de8c5d098ccd798faa39be392b331b4b9bf16adcbeafc67f733b84625932"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.14/zwrm-linux-arm64"
      sha256 "a568e22ec8c193b21cc99cffcb82d71fe544334d4b3d4e67b3d7fdcbb9bf65d6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.14/zwrm-linux-amd64"
      sha256 "1dddb072aea50a2625b68eb442c3401c8170d70b580456bd08dbf77dbf770135"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
