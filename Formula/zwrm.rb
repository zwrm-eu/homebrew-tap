class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.6/zwrm-darwin-arm64"
      sha256 "bdece0d87a100abcd2fc865525681d0dd0e100ef627ae39dc6e862816862e3bd"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.6/zwrm-darwin-amd64"
      sha256 "99ceae25ba8dcba22474ecbaaf2f96574c68d9592282857ffe1ea908e07dfa16"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.6/zwrm-linux-arm64"
      sha256 "e338bcbe6bad68931fb3a08ad62fbf90a8f3dee110b70ffb1d5432d577b09abe"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.6/zwrm-linux-amd64"
      sha256 "d9230f0885b8efe4eb263606147944ff08ec90bfad8cc7e72fca1174c05e9c4e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
