class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.3/zwrm-darwin-arm64"
      sha256 "338b1c56575672f56300c4bfb4eecb650e0e87bde2ef94903c193eb2b66109e0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.3/zwrm-darwin-amd64"
      sha256 "c2a6678a2f02b3a547a734da3d43700754d5b7db0e0ecc615a822b8b67111c17"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.3/zwrm-linux-arm64"
      sha256 "900b97fb1ecaea19d72c5750bdf873135bc0e653897682b7a33cbae646d7e445"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.3/zwrm-linux-amd64"
      sha256 "bed5ceee090748863e6d77b3d514655abb0b6d0ba7ff3b10e7eed2c9bac7242a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
