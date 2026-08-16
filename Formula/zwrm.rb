class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.6/zwrm-darwin-arm64"
      sha256 "c1858da228fb2aad9bb83df657a2e399c5173272c10a3f7dd1a6d96972f22d5b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.6/zwrm-darwin-amd64"
      sha256 "0e18cfc4e65c38f4c541127057b5bea43c0811095a5e2bb5b4d54fa2f07e42b3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.6/zwrm-linux-arm64"
      sha256 "8dee40e2b025d46e0750e63230c3d5f451326c5c6622ab95e34e6063b516d632"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.6/zwrm-linux-amd64"
      sha256 "8c33d05a0476156b1baea1f67f8463e37f67e6c22eabafb9e76f399a7179b0a6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
