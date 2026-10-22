class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.9/zwrm-darwin-arm64"
      sha256 "7b0f3b2ddf9af62159c87e8ca24cd0a6965ee6cfbf53cba447f8f09f76103975"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.9/zwrm-darwin-amd64"
      sha256 "e3cedb1c0e2d6fb30feee6aecc47bee095e696edeced673e300fc23659c47b39"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.9/zwrm-linux-arm64"
      sha256 "828d837706d6366862dc286a2cc3557bc58530b2c4cabe3832813ee4d41d4b5c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.9/zwrm-linux-amd64"
      sha256 "d26d4542c9b764635aa49497099ed5c8dda5b4330cceb3d7bbcdc2e5f23e85d9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
