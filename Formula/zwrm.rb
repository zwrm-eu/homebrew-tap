class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.3/zwrm-darwin-arm64"
      sha256 "deb129889c2cf27c845cb1a4d9c108e4513e57e15d7c86c405e8648caeeb9e36"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.3/zwrm-darwin-amd64"
      sha256 "8a8957a9f9049db6d28d6379ffb05d450d381de3bc1706f347ecdef500f0e9ca"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.3/zwrm-linux-arm64"
      sha256 "afea6ddace0f5ddb9da0b063010728fc30213b18c08ffc07815492ba026ea912"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.3/zwrm-linux-amd64"
      sha256 "bbfab17e4d498e34a64d32f7521ca3db5525e97177587fe59b5cf616b24d0683"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
