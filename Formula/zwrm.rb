class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.14/zwrm-darwin-arm64"
      sha256 "ed660ff0d0916993da62331d5bdd83080233f63dc653ad1f29d7e0d4c615e481"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.14/zwrm-darwin-amd64"
      sha256 "bb78befbf6668ae87cc8d500f6c5cd6c6bc2f51ba68e6f1bf6b521cb820e83b0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.14/zwrm-linux-arm64"
      sha256 "694397e536bec89833130de95e378d74b8a224cf5f643d11e4b073ec815263c5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.14/zwrm-linux-amd64"
      sha256 "ac1d20963d692c45cb12c1a01d4ae43c0f6d01028734f266f4fa1af3ae531ec9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
