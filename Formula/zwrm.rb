class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.8/zwrm-darwin-arm64"
      sha256 "7012f876d8f12dbfc083a99a5e5174334d21f6e6fa193e45395be3735889ddfb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.8/zwrm-darwin-amd64"
      sha256 "72a7a4e240c9c5fa561c0184ea860c85d17051b6f41cad208b2599419b2ee5d6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.8/zwrm-linux-arm64"
      sha256 "4beaf990de49cd4882794ddb4563588c54d443a8f6092d02870422df9fc524a0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.8/zwrm-linux-amd64"
      sha256 "efafcbead4aec4a3ef251d3bf020cf408efe77c5bafaada8f6c7d2718f815cad"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
