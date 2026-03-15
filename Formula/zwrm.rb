class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.7/zwrm-darwin-arm64"
      sha256 "f784e80da642545bda7f186948f1ec19e810f6cb824d25f74b4fe5a5627821e6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.7/zwrm-darwin-amd64"
      sha256 "f1cd8b26accdaabc98be6f12bea04529192ea5c782553dc178bdb2c569d71559"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.7/zwrm-linux-arm64"
      sha256 "f26bcfca629631b5fb7b83428c0a9777ae3e4ad508c645025702ae30bf3c5ee4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.7/zwrm-linux-amd64"
      sha256 "6e5cfc41a61b3080da84b8e91d931015e5460a013e9342bcc50318764e428bf3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
