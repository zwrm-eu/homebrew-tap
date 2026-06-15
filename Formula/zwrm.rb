class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.2/zwrm-darwin-arm64"
      sha256 "7c2d47d49a7665af8445de0740b18049566aeae4b327b924205e3856dd49713e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.2/zwrm-darwin-amd64"
      sha256 "9ef7087016047381d1e8d04cfa59b460cea2db605d76fa7a8fadadc32db3cb7f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.2/zwrm-linux-arm64"
      sha256 "9f7bdb31900f8827316069bc7c28a52134897ad908048cde613b38669a69579e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.2/zwrm-linux-amd64"
      sha256 "915dff0528185fef2ab354fbe3aff49f47f7e1f31bc2f01e05977f753a1875d5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
