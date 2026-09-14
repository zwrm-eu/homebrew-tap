class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.4/zwrm-darwin-arm64"
      sha256 "3adf41b3d96e7f7f30361c05716ac801ca63c2384fb4e86d0c252edcd444e277"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.4/zwrm-darwin-amd64"
      sha256 "3e035a46aee4bcdf407710bccaa39ef799cda872a436ede12153ad9664b43a8a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.4/zwrm-linux-arm64"
      sha256 "ce67b17923f8b36869e85958574656206e97bc361da53ffaa3dc3a07959566bb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.4/zwrm-linux-amd64"
      sha256 "b16679e7a39cf91929e8bfda6eda06a4248ece3881208be859b57f61d67833a2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
