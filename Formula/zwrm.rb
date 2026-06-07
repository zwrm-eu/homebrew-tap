class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.4/zwrm-darwin-arm64"
      sha256 "60f295addc62af370d9e20950e78bc0395d2426dd9a2e3581e7ad01e267245c8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.4/zwrm-darwin-amd64"
      sha256 "4d76efcab3f155a9c189b3a9ceb494d5a2ca748a1448b36d6a59630575879984"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.4/zwrm-linux-arm64"
      sha256 "2ffd161511f47ea5578f14e37366d4da294947563f2033f915562c46fc15848b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.4/zwrm-linux-amd64"
      sha256 "0e4244eea80bd33ce5b1463dfda84afc1effbae08ab1f3e405ea67455b83c377"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
