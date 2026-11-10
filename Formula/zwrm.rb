class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.39/zwrm-darwin-arm64"
      sha256 "8837fac04a673144d082c21f72c6ebaf225ee0f57d7cdfdcc9961531c3092c07"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.39/zwrm-darwin-amd64"
      sha256 "b26704b313b3ef57b6347daedf0b8398ad110a4ac5089f9a1b7aa045ca7c022d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.39/zwrm-linux-arm64"
      sha256 "ca96340706647f65d5b366f789d2eb4a21cb26ea86d4cfd7fdfb123a053cb3ca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.39/zwrm-linux-amd64"
      sha256 "1be8422738d5e0b3d99a61a38d625fe390804c6a656144c00e33e221aefb9925"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
