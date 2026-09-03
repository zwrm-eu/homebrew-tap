class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.12/zwrm-darwin-arm64"
      sha256 "be03ef98512a2b9a90a495b77adfbc55e8867c0d81adfe5232e7b2a2d0330fd1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.12/zwrm-darwin-amd64"
      sha256 "7cb6eafd834f05ed810d3ae1bacad85b0e8fe115bc69ba01367f915b41f2d7d0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.12/zwrm-linux-arm64"
      sha256 "dca22fe65a300026ce715425f7936b0a87fba4a6ca601a38cc2cea6c5a7fe76b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.12/zwrm-linux-amd64"
      sha256 "16e7fa379e65305f25fb6a65dc30e8fd162cead9597b0ad065991eca942ec185"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
