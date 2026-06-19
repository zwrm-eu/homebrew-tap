class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.3/zwrm-darwin-arm64"
      sha256 "33f4100407a0013113ce397d3711ac05bb3bd272a0e71104272a3f4a5dba95e2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.3/zwrm-darwin-amd64"
      sha256 "2363bb72da57a40bcd178247fb92975529977c1aa63436887f3539b1ea5e867e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.3/zwrm-linux-arm64"
      sha256 "aa298e5ecae791c1cd9136589fcef40576e6dc0426883f55e3194f7105f741ca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.3/zwrm-linux-amd64"
      sha256 "abc5c12363599e2ac2f3f60af859c410bdbaa67fa556dd622df0bdd85139ef3a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
