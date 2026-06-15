class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.1/zwrm-darwin-arm64"
      sha256 "181b466f9c69cd5ee80ab0b98abb6880626bad0707c92c424f5afd1df845a6ad"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.1/zwrm-darwin-amd64"
      sha256 "69a5401baf102f3bb70451772c9040263f373d221a19790709b56fa63ffbc675"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.1/zwrm-linux-arm64"
      sha256 "27615cf5d44e0cd2169812ef61349a450882deafbddb81db92f3c6b084d6e3c9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.1/zwrm-linux-amd64"
      sha256 "2c0178986e377a963cad8ee2f873fad9cc90ed7463d3add98750544c1aef2f9f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
