class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.12/zwrm-darwin-arm64"
      sha256 "3d2406c93912ea836231e3800f55aa394b4b45dbd5a93ed38e4f02f2fa606a1f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.12/zwrm-darwin-amd64"
      sha256 "f69da70c890a5dafc9a3e6ce405e1cadf2275c4e9a5035dfd2e025d6e1e5e8f3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.12/zwrm-linux-arm64"
      sha256 "4a886536fb5508376418ec790b22083fc16955669c999b86ee17fa221dd04b1f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.12/zwrm-linux-amd64"
      sha256 "6b9adaa7e875954e305b52191fe21965633bb64fc4a00901aa758fcff87ddde9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
