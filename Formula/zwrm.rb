class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.17/zwrm-darwin-arm64"
      sha256 "1b22b4615577052ce3cd993ae634e5b33f01f498c64da318cfe2c3abf2053e27"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.17/zwrm-darwin-amd64"
      sha256 "c3ec789ac9cfdfecb012bf31cca0da91f36f1e7532bfdfb37c043821de7c8453"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.17/zwrm-linux-arm64"
      sha256 "5e46dd486e74a1d37b3d464b50a0059304306628348942acf2b3c086cfa8fb1f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.17/zwrm-linux-amd64"
      sha256 "8039fbbc153bf26ffd41c27a9b10774b7229f367c1c47d5b3f4a7ca9c187978b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
