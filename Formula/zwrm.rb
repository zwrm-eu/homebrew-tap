class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.5/zwrm-darwin-arm64"
      sha256 "18adb3195775a0aa52e66a5688f2a02cab099919f683a10cbd890bf09c28f62b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.5/zwrm-darwin-amd64"
      sha256 "dbc425a478ef5ce59f0a7519abda854247e6b073323c6ba70d6ac52ace6c2976"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.5/zwrm-linux-arm64"
      sha256 "966bd5ce87801e50a7eaf3c0c6065a9021f6b941f880ff289e87ae8655129dd8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.5/zwrm-linux-amd64"
      sha256 "b1e9645a7cdb88252ef566b0da549215a362ade0d0fc73bc2559e6f863ed88e2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
