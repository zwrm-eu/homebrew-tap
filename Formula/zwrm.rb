class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.13/zwrm-darwin-arm64"
      sha256 "1f65453c835222c70e4ef722b8f9d2475cbed3e30e859b89b317bc7742d36395"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.13/zwrm-darwin-amd64"
      sha256 "7f851aad6b6ecc478a6b6373d65ac42a113d996af4b9f9768aa153f751f61a93"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.13/zwrm-linux-arm64"
      sha256 "0af4d874fa01cdce5386af970761a87c893094bd71f94ffe980a66c4dbdcbd6a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.13/zwrm-linux-amd64"
      sha256 "1867fe7846b61d70124682d9681818555ed44cc774bc4f18f4ab9eb44a0be8c3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
