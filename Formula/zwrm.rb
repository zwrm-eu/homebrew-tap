class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.23/zwrm-darwin-arm64"
      sha256 "9397131f997b0ab13906bcf669aac78429668664577e6442ec1790d2b0fc1227"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.23/zwrm-darwin-amd64"
      sha256 "b9a77798aa75fce255b0461073516337472df5ffef8df132f97436ef2725b81e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.23/zwrm-linux-arm64"
      sha256 "11b67162a004e17262f28e97a9d6c7691ad4f272d37c5a6362693be512d65109"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.23/zwrm-linux-amd64"
      sha256 "d87ed48d6caad55c877feaa1b3c07a48fd03d80fb642611aec01fbfdcde99b42"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
