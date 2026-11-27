class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.25/zwrm-darwin-arm64"
      sha256 "c6577674d580f0259a2688805720548a2af5bcaf6c7526962594ddb076f6cace"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.25/zwrm-darwin-amd64"
      sha256 "24100f2c9aa85063f6c539c746534f81a4fb754f6a7e3c669d04cd5f4e6a04ba"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.25/zwrm-linux-arm64"
      sha256 "5ba69c55dd1841b218398c9aac0b0427a62ced14f6de6fd25b17760c4215b959"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.25/zwrm-linux-amd64"
      sha256 "f2bc95851ace16c3b8f224eb871a353b65c66756ef68ef1c8573da16c6bbbbf1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
