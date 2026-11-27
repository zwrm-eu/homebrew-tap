class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.24/zwrm-darwin-arm64"
      sha256 "558d9bbb5fef643204ddb17f85d96a547eb9546bb928dab42be21d0142eea4b8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.24/zwrm-darwin-amd64"
      sha256 "dcfad7a66285199e5596116e6646b1a8d88ec793d842dd261fe3c554c95ba503"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.24/zwrm-linux-arm64"
      sha256 "7a9a3032f27ae0b2b7938570e95508b922cc5e5b71a1cd98930daec97c252e08"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.24/zwrm-linux-amd64"
      sha256 "45f7181f4a6430b7df6d1ab5c35525e2f634a02aba2b0869f7c3b6042c72cfd7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
