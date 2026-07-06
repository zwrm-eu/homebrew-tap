class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.11/zwrm-darwin-arm64"
      sha256 "76decd1adb70537950773fb407888d0a665c17d573fca4182a230c6b00e3c398"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.11/zwrm-darwin-amd64"
      sha256 "a0be9ce964c9d5d90c8ae517aae3e5024dfe4fa774a4a35548f511c2fa9c67a7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.11/zwrm-linux-arm64"
      sha256 "f6316992a9da77e281e8bc81d5888c7871c8a23f1f91b24d3478e028d24a4d8c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.11/zwrm-linux-amd64"
      sha256 "ed36dce45b2d794648bf78f3f936ecf741a04a983099af548d908debea3c8e14"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
