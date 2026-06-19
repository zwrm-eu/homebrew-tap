class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.5/zwrm-darwin-arm64"
      sha256 "b4f27adca22ad84433c1f821d18dba352aa27c347565883bb3716f66fe2b3089"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.5/zwrm-darwin-amd64"
      sha256 "e72fb3031f2df18b95bd83906e6bf2bbd1de5910229cc07e21a8d88bf3c3b123"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.5/zwrm-linux-arm64"
      sha256 "ff449994f7748885a4ac32a701a484c017e569593f9c44d37fccc829f26766f3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.5/zwrm-linux-amd64"
      sha256 "9b0d9781fe060a7b6352a0eb3eb5a3482c35515cfdb3cbb7d8e222d5125557c0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
