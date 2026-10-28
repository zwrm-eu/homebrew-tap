class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.6/zwrm-darwin-arm64"
      sha256 "c1a80e3cdf26d9060bd00e065e43b48188d1275803337131a6a3f4fd869afa8a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.6/zwrm-darwin-amd64"
      sha256 "7879d44e78501e520d0e6cddac224776c840f89e3365f1b5dcc82491cee5dac3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.6/zwrm-linux-arm64"
      sha256 "6efe800df393926fb316df208019611c4f002ad293d92ff82fe7224f2e4a8be6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.6/zwrm-linux-amd64"
      sha256 "7afa0a0488250d24e514252881b54eb7b30b3a6ee92737b3b9247a6d04df46a8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
