class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.48/zwrm-darwin-arm64"
      sha256 "239f5209ab7de8ab06711621b35f14423c6d41b9da26efe4ff4819a840db2d3b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.48/zwrm-darwin-amd64"
      sha256 "afb6aba13d25443f8f5c3f4c4af4463e9cc586b576436a48106e8e804d1173f5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.48/zwrm-linux-arm64"
      sha256 "cf9af361c7818f001214001d672633a5f0183bd2c46cd2be31d9375a57c34a81"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.48/zwrm-linux-amd64"
      sha256 "681b72dc146baabdae5f89cc90a0f44ccd2f0c45c1093db0a4941d3e8fb5559c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
