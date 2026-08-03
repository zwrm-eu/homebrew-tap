class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.1/zwrm-darwin-arm64"
      sha256 "d649d04ddc97de3d75a9e757cbcaf31d1e16840339bf5dc9cd27e18579859453"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.1/zwrm-darwin-amd64"
      sha256 "f7273d4d34fa1da60808ba0f665f274cc0abfc47a5bd36a384b0209efefc8d81"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.1/zwrm-linux-arm64"
      sha256 "004277bda551ad4bb0cb71c61e293659d87652385bd4f9331f61cd7b4fc07e9b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.1/zwrm-linux-amd64"
      sha256 "56500d173a7d94b8e4c6d2fe87b6b67466bceb3b4a433ef89cf25ce353600444"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
