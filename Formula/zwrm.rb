class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.22/zwrm-darwin-arm64"
      sha256 "74b609b3993de3bbece5f2707837c1d71890facfe325e3dd638d7de521a251bb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.22/zwrm-darwin-amd64"
      sha256 "a445e46b15989867c6592fb13b53a2236e79f5a47eb57fe28d6778b22c303fea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.22/zwrm-linux-arm64"
      sha256 "5838e07855e6ead7406b398cd2fa10e8cc33813ce1dce8ef8a433448cb614944"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.22/zwrm-linux-amd64"
      sha256 "2adfdc9cb9c374c383f53618da473630c3a30da616610e2a6a78f204307638c3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
