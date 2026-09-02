class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.5/zwrm-darwin-arm64"
      sha256 "7a4f4669f67df237a0432ee8a99b80775cca3674822ec9825075df35967ea7c8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.5/zwrm-darwin-amd64"
      sha256 "46541a6dc32758c6687ae3c148303393821b3c3669f63de5f5546d70d95073a9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.5/zwrm-linux-arm64"
      sha256 "37efb690ce58e0b21a7c2f8f7f22ae01451bd5023b56e7f3505738f5cd80c9f9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.5/zwrm-linux-amd64"
      sha256 "9f6b8b2f26c4ea3506cb9d626fcfd1911337d59d3cb33e537ac50b6be1c82118"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
