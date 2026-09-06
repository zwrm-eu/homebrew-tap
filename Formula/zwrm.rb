class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.19/zwrm-darwin-arm64"
      sha256 "dac5dcee042a0e81c4ca4d790682a37b045a35da4e92cbabf9ab6b58010c2bb1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.19/zwrm-darwin-amd64"
      sha256 "bcae759e4e6815b9c068e50a1b83b16509c40314125299e2c3101a31093d022c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.19/zwrm-linux-arm64"
      sha256 "520084a18ebc2387177123d09b22da71e62d05811fed4095fcea0d4e6ba2d796"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.19/zwrm-linux-amd64"
      sha256 "2cbb88dac48f6bf5619eaa5a98c6b5cd7ac1bfa8d986e95e6f9ecea1d56deb43"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
