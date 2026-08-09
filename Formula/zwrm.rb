class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.2/zwrm-darwin-arm64"
      sha256 "17162ce7cb834691136a44e44595b2b1c153513e2ad02f8b0cf7d0fd6da47b65"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.2/zwrm-darwin-amd64"
      sha256 "b7641b02a1b952ed0462b2a5cd3f45c035024ee6920b8e73ca010d151003b0e6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.2/zwrm-linux-arm64"
      sha256 "61d42acf389fe90c646af03a58649ff8219f26fa6d2ed7a5d325476c5051f207"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.2/zwrm-linux-amd64"
      sha256 "0009158be01288e9c0d2568ee900b707380dfc880addcd34ab9b3331bcd68ab1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
