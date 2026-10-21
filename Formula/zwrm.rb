class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.5/zwrm-darwin-arm64"
      sha256 "d33b104ff4dcf304b7243063df4df7a3a203f3ca1fb51a5cce9ae0a2be9a1234"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.5/zwrm-darwin-amd64"
      sha256 "1e21e2857294f5290bb957734ec0a45fcbaf22b6e5adea914f4ca0d23010d4c2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.5/zwrm-linux-arm64"
      sha256 "b713c4409d4b6bc1664035f91cafce085d04bcc9b88cf4c22d1c8a9043a7013b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.5/zwrm-linux-amd64"
      sha256 "0c3d5233fb00369541af73492cd3d52df63866130a0688547a6a3959c956d17e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
