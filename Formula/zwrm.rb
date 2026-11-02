class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.7/zwrm-darwin-arm64"
      sha256 "48e5d5013a779a20726b803905f824c17071d45b75f0b16a1280fd0f9e97623f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.7/zwrm-darwin-amd64"
      sha256 "d37449976356e40899f48a050bc934786377de8f01671ec4a60f4da1a3edacd8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.7/zwrm-linux-arm64"
      sha256 "01c880ba04d53dfb70527af40369c02e38bc3aa58c769147cc5fd452bdfcea6b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.7/zwrm-linux-amd64"
      sha256 "eb4a4ad9c3d9d9393aa7b6d740ad36153801402e4551804587131e38997f639b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
