class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.30.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.1/zwrm-darwin-arm64"
      sha256 "01a68ec82587698e05cf6cf3c28876e82159cb5f70d679ae5ab031b594dedd17"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.1/zwrm-darwin-amd64"
      sha256 "03de440b5cf4b8b4577e563c5243fd908de9b46b57664df33564febfc5868d38"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.1/zwrm-linux-arm64"
      sha256 "a57b9329d77a79bae8f253121660471378d881f60a6666fa00139b489764f213"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.1/zwrm-linux-amd64"
      sha256 "a75c4c6a02fbfedc17c1c334e885b5cfcf2af059fa2dc4edcb82bf9528797f34"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
