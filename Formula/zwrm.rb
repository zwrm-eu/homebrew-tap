class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.15/zwrm-darwin-arm64"
      sha256 "7e0e6c70418387e6d55ee794fba65aa5778749baa5d7d60090421c4a098a9814"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.15/zwrm-darwin-amd64"
      sha256 "011232896c4e00488d7b07d3a3712117da84228eee201d996a0108042c9aeeea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.15/zwrm-linux-arm64"
      sha256 "72388d57c75c2df8f460ce7aab016f585b03c64247edef93a28e23aa51412ec5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.15/zwrm-linux-amd64"
      sha256 "eb7b62400a6053510f6511a2c446b522a84911ae838a0e8c78027c4a61495b3b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
