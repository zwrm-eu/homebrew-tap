class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.18/zwrm-darwin-arm64"
      sha256 "1c8d420da1f8c6ca15edc72c59367039521ef3c619dc30de1f77225d71eb009b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.18/zwrm-darwin-amd64"
      sha256 "cebbca28abbe4f9b8dcc1f3a04b40cde6d5a8fba52bb1103c6c8cc228e36cd20"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.18/zwrm-linux-arm64"
      sha256 "738a214b4d60684b7256df073d1289ab78a25efb98ad2bed9d6aab0a7f13e159"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.18/zwrm-linux-amd64"
      sha256 "1ea73a1d7b0d715665f008de33fb917671ba60ee339481a094742d86e0061cdd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
