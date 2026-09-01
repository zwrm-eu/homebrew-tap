class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.23/zwrm-darwin-arm64"
      sha256 "90ab2545a11346228c02a044f8874519d2ff951b021dba099f26477476818dde"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.23/zwrm-darwin-amd64"
      sha256 "cf72bcff6752a579aa3331ee25c96d252f1097f9b22065f6224ca8a5d95d87f2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.23/zwrm-linux-arm64"
      sha256 "26616401d80ef44418fb4e11f04515585989c0942071693ead7183a3859569ee"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.23/zwrm-linux-amd64"
      sha256 "34d7129a32224931459fda0565c7c3ced97f3e142df180ff1ed8428c759a86c1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
