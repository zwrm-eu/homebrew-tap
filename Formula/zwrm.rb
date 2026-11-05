class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.24/zwrm-darwin-arm64"
      sha256 "b5c210c575c09b5977ae5af59c9fd15a31b06834201957cf12410351f1988f40"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.24/zwrm-darwin-amd64"
      sha256 "55a3d0c5961d594dedc85910eb4df19a0d8a607e28654fa234ce166f98c2a3ad"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.24/zwrm-linux-arm64"
      sha256 "00540c2113107867f35d9f22b8276f208e69559f8e5b56b3d0dd4c152a7d348c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.24/zwrm-linux-amd64"
      sha256 "ddf9a3ada548c86c67d4e63452ccfa71a778f7e2683da6f4b85f8cd1116005f8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
