class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.20/zwrm-darwin-arm64"
      sha256 "6bcfb4193f7a85ecd3bdbeb46afe1f4beac8b68fdd41f68a010e07352011f543"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.20/zwrm-darwin-amd64"
      sha256 "9c535924b79afb8ab7eb1cb64550e398dda693f4c18aadab42d9deda8ba73466"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.20/zwrm-linux-arm64"
      sha256 "3213ccf69c3b0a6536d7bcca81360d80df5a58eb3f9f44321d2bed1342ba32a2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.20/zwrm-linux-amd64"
      sha256 "198015bfb1dcf0bcf5947b08622d1aafa990399664fc49e8d2131ad9b5ec3ac5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
