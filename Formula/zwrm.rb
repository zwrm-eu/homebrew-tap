class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.17/zwrm-darwin-arm64"
      sha256 "4096dc9984f4b260ed1d90af796446b017a05cd227b213b34dd574cac08179d7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.17/zwrm-darwin-amd64"
      sha256 "c7c62422b542c70dc42c74faf3c7995cebbdbab5a7003b410c88d3b511c19ff4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.17/zwrm-linux-arm64"
      sha256 "b43931d4ac2747c4bc47c4c8bae72e40ecc3a019f58f89f3b76becdeedc7beae"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.17/zwrm-linux-amd64"
      sha256 "0ca5ffc7d19cd6f8505dac3f4faeb0fe3e6baee8b222ff2e1b386aeebf2d5b16"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
