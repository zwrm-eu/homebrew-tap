class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.14/zwrm-darwin-arm64"
      sha256 "c274e8a7d5b956c122af0902a1a1952c27dd0856953e3cb88c73259bd97b5f78"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.14/zwrm-darwin-amd64"
      sha256 "fdca7b33d63e90aa94b5d0999fa8901c23226da011f40a66ca06017919eab754"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.14/zwrm-linux-arm64"
      sha256 "a91b2d4f8b624f1fdd9fcd810e4e4bd762bab18de87074a0fdf547678694adeb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.14/zwrm-linux-amd64"
      sha256 "8e5e3f62b426559b25c8dcf653cc7937632f4b76bceabe366b2845eff2cee7e4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
