class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.4/zwrm-darwin-arm64"
      sha256 "49e90394a58d1b9076e6baaaf1cce7486469344708a2ff28d5b93b2337fd36b8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.4/zwrm-darwin-amd64"
      sha256 "6e7b9b11ce3b063e35871f0721720079b0d0e45d8ab0fee5138358b5dd8ce96a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.4/zwrm-linux-arm64"
      sha256 "1d15a789ea0138a4c034a34afcab79095659ef6e4913e5fc9c171a7bc04bb6ce"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.4/zwrm-linux-amd64"
      sha256 "e4057033a7cd18dc24e65bf29310248f29abfe425ff3c938a7a1ab79ad7efdcd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
