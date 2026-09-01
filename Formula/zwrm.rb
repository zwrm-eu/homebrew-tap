class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.26.1/zwrm-darwin-arm64"
      sha256 "5032caee94f3b43ad26681937b4442671ba296311c85044779b54087d516d653"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.26.1/zwrm-darwin-amd64"
      sha256 "c4711e92b5828df57ce81f7292ff4c3ce354439d7a84a8ad84f2045993a69cf5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.26.1/zwrm-linux-arm64"
      sha256 "89407dd84b74b439cd0bde17f9d6031cda291fb621169257ffab76c95f043f99"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.26.1/zwrm-linux-amd64"
      sha256 "620506d3ea7183b5ba02dc3b75b36e36b27114953be0f19233488f535819b9f0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
