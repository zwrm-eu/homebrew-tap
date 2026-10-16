class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.3/zwrm-darwin-arm64"
      sha256 "71716c75c44b172b6ee9fe3026e590e4e0b30afa97b356e385c4096768572cdc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.3/zwrm-darwin-amd64"
      sha256 "ebd4d7d804218755ee8b48e240906b1fe7fec02d03a8c18f472aa6bda22c4e07"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.3/zwrm-linux-arm64"
      sha256 "d0b85c48088fea9c625b9bc9ab7a1b59c18a6ec632b6cfef527fbc5dd12584db"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.3/zwrm-linux-amd64"
      sha256 "1d830c1893124f33a99a09fc597cf37edcc53e4deb0371d0d14838b02ec29021"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
