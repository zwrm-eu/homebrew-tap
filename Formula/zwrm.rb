class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.41/zwrm-darwin-arm64"
      sha256 "da23774aa866a005c8c2b5d194ca6b66d0fa6d585233905fb8475a6b66bbde2e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.41/zwrm-darwin-amd64"
      sha256 "2e056f825f8b227911e630ef21d21f3645534bbddc3e8887fb907f62bd9dbcde"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.41/zwrm-linux-arm64"
      sha256 "5afac145acdd423be1fc4431096d0cb5a2c754f7fe0a389ab0f63d7f4f962de5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.41/zwrm-linux-amd64"
      sha256 "79221d5e82f4187da2672c1f510b33c29bf3c4c7ddcbf1466e395539a24bb7a8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
