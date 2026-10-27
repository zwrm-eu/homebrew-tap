class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.31/zwrm-darwin-arm64"
      sha256 "9540c6a51d6aab520b7b5aaa11fff17a46738224c3ee355f727b64f81f3a4886"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.31/zwrm-darwin-amd64"
      sha256 "72e6cb9f4e97d06cdddd3d55f7856747599da3d2a966e97dc65c7c12e548d8fa"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.31/zwrm-linux-arm64"
      sha256 "01e003da2667db8fe2392b978b3b02dfcfa03dcb841fa917ac501097515e629b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.31/zwrm-linux-amd64"
      sha256 "310216248d2ee8850747e2ea4c1a57757638e48a0f268c65f5faca263a974820"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
