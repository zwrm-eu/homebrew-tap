class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.3/zwrm-darwin-arm64"
      sha256 "036a2e5da2c972986ea5016956f06dd930f035623f8b55a97ffb094b8f9938f8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.3/zwrm-darwin-amd64"
      sha256 "11bc713c37de0c18df98596bd386b54324a36bf3a5e42abce6e46f6c29bcb15f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.3/zwrm-linux-arm64"
      sha256 "a5c33d2e5d8471c785f25930ef85466965494cb9856157ca8613dd6508ce41b5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.3/zwrm-linux-amd64"
      sha256 "0ac516a3a64fbfe50193412efa69b32cd64629500c31a7e4c94332b0b129f8c4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
