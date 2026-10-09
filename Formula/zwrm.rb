class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.6/zwrm-darwin-arm64"
      sha256 "3ea4ada7180020ab7ed543d1571efbbfae1c75640c26d504dc2b57193392a6f5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.6/zwrm-darwin-amd64"
      sha256 "fddc9b87b8f9a8b3beda7126228ad259fd3559521c280dff3b2e876037b62cc7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.6/zwrm-linux-arm64"
      sha256 "a7a57f9f15165680104f457bd13a0306b97f3a1faaaf35e1787af77a955b5a50"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.6/zwrm-linux-amd64"
      sha256 "2fabcc0e650d565dde086af50bb3f77e58403554f9ee0cb1bbd34ae59f068f7b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
