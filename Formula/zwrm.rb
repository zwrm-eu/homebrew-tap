class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.1/zwrm-darwin-arm64"
      sha256 "4c94345bee44dd8d7d0fd723083a4462641b8b263d289fd10a0a574aeb74e6d5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.1/zwrm-darwin-amd64"
      sha256 "51a62fce0ff4685072cb73b7229a2321998e70248da7469e0284e187c917a1d1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.1/zwrm-linux-arm64"
      sha256 "e668d30e2b145732a14b22aa9199570e1210b1f707cd5634a1f38bf94c729fcb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.1/zwrm-linux-amd64"
      sha256 "928f88344d96f2094196601baeccfccdf5bb8cba5639020623e098c19d367c0f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
