class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.4/zwrm-darwin-arm64"
      sha256 "0301a9e0e821eb2192c3d4a4c43d9c9c8e6c343a028fa7961f6121c0e48eec1f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.4/zwrm-darwin-amd64"
      sha256 "d8fbe02a383c3b510f2a7bf0bfe73a6277a67067ede4b444062805bbcbbfef18"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.4/zwrm-linux-arm64"
      sha256 "6db5add32c88a1b199aa11099314e84305058871b12dd226d6d843388e9d5a35"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.4/zwrm-linux-amd64"
      sha256 "5d2d072bef08b13148fcb392fda561bfd8217a6b04032fe431d06f1c9a2b56db"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
