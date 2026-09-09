class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.3/zwrm-darwin-arm64"
      sha256 "23853cde1929ee4c579e3d49dbe3b83729cb806a246cf716bf133c451bdaf163"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.3/zwrm-darwin-amd64"
      sha256 "78a67b86e623128094866a6469349bebdd84ba0d0b54affdea4d0e4bfc308bdf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.3/zwrm-linux-arm64"
      sha256 "ff5879f0682e3f8cd0989ecd8e6c3bd9ac600f7fcb21598ffd7ab615ccef0480"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.3/zwrm-linux-amd64"
      sha256 "a85d79cf22010b7d8acaacc85afa68cac49d8d74ee869d463f8a05f56334c5f7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
