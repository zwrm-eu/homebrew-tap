class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.4/zwrm-darwin-arm64"
      sha256 "a5f89405b59d49c7b55a37b1b4531b12f6828b96528d2ae747898e4dd69be779"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.4/zwrm-darwin-amd64"
      sha256 "14da173d179fdb0f7e832b9a3dce26c8374668c3255973158c0a07a1c1f95240"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.4/zwrm-linux-arm64"
      sha256 "94b93aa568940c53f5da6dc3e76dcd1711e98605e2d9ab6a826081d9de2e3fd7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.4/zwrm-linux-amd64"
      sha256 "8961fc3626fa3465317e8f5e21c8660de76ec3f9592ffbe8232d70b0bd589539"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
