class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.8.0/zwrm-darwin-arm64"
      sha256 "7d90c2c34bfd477564105806d2b2084e22369bf6685aed3465a05c876fdd719d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.8.0/zwrm-darwin-amd64"
      sha256 "883a6e7e7ea846fd27d14e254665da0a1f534ece3b0c6e378ae7d11f4a1af7cd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.8.0/zwrm-linux-arm64"
      sha256 "352e6575099192cb8b3ac316e7f79f97ed746a88d2dd12ac643735c3dab9a893"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.8.0/zwrm-linux-amd64"
      sha256 "e8287c798cb67a18c2e8e638d67bf5b826c3818ba7fa8e3d8bf16a967d603441"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
