class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.1/zwrm-darwin-arm64"
      sha256 "7a42001fd1649efd780b9e5a2be67cb35740b74d90fe223ad960186a91726830"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.1/zwrm-darwin-amd64"
      sha256 "b5aad15a8a5ba6a58b8d4b84cd2b7e4d5fd8449948315bc4c20f7e36c7b3e6b0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.1/zwrm-linux-arm64"
      sha256 "cdd9163d34942b98e2f226d572848adff4620f0a0a37e790cd39b14e20b4488c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.1/zwrm-linux-amd64"
      sha256 "ab2a1fba3ce982e3623b77416d8efa225a57b9ff13e4a579483386eb77cab84b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
