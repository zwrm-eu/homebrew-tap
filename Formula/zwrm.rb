class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.11/zwrm-darwin-arm64"
      sha256 "b0c3076115d129d5e2ef4c79769445ee38e4ca846a01d4883d4e418e7d038038"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.11/zwrm-darwin-amd64"
      sha256 "c4b8a907d3ebd1be38e8afd85483c4b85601671fbcdbdf9a091298a7e2dd5685"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.11/zwrm-linux-arm64"
      sha256 "f1598ffd99186d0d352255547d33c0890178650445602c00e7e1c77833e4d3f9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.11/zwrm-linux-amd64"
      sha256 "c6d377d9f3fee48f141d8d052e4574228992213a4b99caca59cadabb7b076a04"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
