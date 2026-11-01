class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.5/zwrm-darwin-arm64"
      sha256 "6bc0a7f95824366a1d99e41da6ad475a141fc0d801e10b122fa3a7cc986a6ab1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.5/zwrm-darwin-amd64"
      sha256 "1a8e52d849243f10c4b5739caadc34f3ef0c40de9cdf30d52044c2ab861a59a7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.5/zwrm-linux-arm64"
      sha256 "cf52fdd24476f62d840e857893108815273e2adbcae379e21e8d7c4fd82587ab"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.5/zwrm-linux-amd64"
      sha256 "be11d739b36f7eeae610bba9784dcede4a6ac95b4d2f581c4bf64b94d0ffeffd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
