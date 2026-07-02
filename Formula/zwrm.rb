class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.0/zwrm-darwin-arm64"
      sha256 "d4a96efec892f3faaae8d289692e3a6574464401e3a0fddc544e34165944a6c5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.0/zwrm-darwin-amd64"
      sha256 "1d392d4ed85dc4d241e6e2bba375ca8f8377bcb5ca8f07ee4efb27452245098e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.0/zwrm-linux-arm64"
      sha256 "8fef8ca57b22f76aacd3ce9a688f7d505a60ae1e5fc13e4ac459a400208e36cb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.0/zwrm-linux-amd64"
      sha256 "1f36a31cd8b97316d182656157ca358468505e732ffbf9ee003c7437a69827fb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
