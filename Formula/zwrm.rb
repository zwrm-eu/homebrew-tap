class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.0/zwrm-darwin-arm64"
      sha256 "c711770ccbdbd35dfe9ba8c7ad4b411e4e6e1fe37d499de2add5c68b368ee9fe"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.0/zwrm-darwin-amd64"
      sha256 "53dbeea41cbe4ca02b6070be84adae92b6e08b30602de1bbb4325aca565eaa92"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.0/zwrm-linux-arm64"
      sha256 "dff30bf06f8701603cbfd5778bfb960b1839182b3a4c9c3194898ec8d24e5a3c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.0/zwrm-linux-amd64"
      sha256 "40ba0fa05c0ea72477b6bb35902c3bb1cf8b0d4e72affae8d4355771deed5df0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
