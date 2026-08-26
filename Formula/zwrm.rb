class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.4/zwrm-darwin-arm64"
      sha256 "acc824d87cb9ab0075e98dcbd21a54631fa23bff2dd5a5677b9e96df74479c3e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.4/zwrm-darwin-amd64"
      sha256 "f1fa584e4ea5c0a1cd33da67d88c4f1a4cb3dc4da64bb78f6efd137ad3ea18a1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.4/zwrm-linux-arm64"
      sha256 "67c120fa013a6af9b8402a81f904bf59e091cedab6da2550fd88b2257511e909"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.4/zwrm-linux-amd64"
      sha256 "b1cded250dfcc17f52ce50c8bdac498cf59e83a5428216ccecac2124cfb0cd24"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
