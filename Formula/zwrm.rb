class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.4/zwrm-darwin-arm64"
      sha256 "c4d0a20cdee4233b65e10ee7cad56055dc4af17735eb79d300364442d8b649bd"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.4/zwrm-darwin-amd64"
      sha256 "259b0684ae253bff5422e633fc52d337f2e5d39fc41e774a9dfe15f1bae512b5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.4/zwrm-linux-arm64"
      sha256 "0b4ddf8f745e69d67392e724bad8813cd834d5433e36c5f3fb1669a4f14e0e7f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.4/zwrm-linux-amd64"
      sha256 "5c13fc542b9a6bfe917c5e6a80bf71023f5bfef72addbed44004ab9b5d4ac0de"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
