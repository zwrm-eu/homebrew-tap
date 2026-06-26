class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.11/zwrm-darwin-arm64"
      sha256 "af3e5b14a9ae1439f15e925e554d7262060cf9dc0531dac8dcefbcf5fdfd6a0b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.11/zwrm-darwin-amd64"
      sha256 "d7f1c64f313c609e66ba2e361d84ada01367eaa31c7422f54150aeddc3ec7979"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.11/zwrm-linux-arm64"
      sha256 "b3407ef7744fe132f1e7ce59e411235342b51c2b9d72344bca29e4f1d5fac47b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.11/zwrm-linux-amd64"
      sha256 "d4a8025d5acf3e5eb37a4b0ee4669f8b7bdcb931e81e566a5d267ada815774cb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
