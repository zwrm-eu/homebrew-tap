class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.30.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.3/zwrm-darwin-arm64"
      sha256 "062a10e774c8317c3c130386991b2e7ad9fb4e7432b22741e9bd1c9d9d4c01e7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.3/zwrm-darwin-amd64"
      sha256 "6228ad128d77abe5d0f3873eb46f50c0df0e9e89d1ddca80f153a8ec276d0d09"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.3/zwrm-linux-arm64"
      sha256 "79c0adb3787de19584d8500d9774f40e35a6784403b65ee51106640bb4d5fc89"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.3/zwrm-linux-amd64"
      sha256 "9d517a8781b84167effd221ce5bad3ce1c7223f1e90423014a23f9cd220f09ac"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
