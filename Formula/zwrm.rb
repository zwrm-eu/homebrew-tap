class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.37/zwrm-darwin-arm64"
      sha256 "f8f42f62b532ccd7788b3fa869a2a54b7cab39b173dcbeee84d2830bc9435599"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.37/zwrm-darwin-amd64"
      sha256 "b78c44ddb4e05f66dc2fa5d5b5972f6f8e99024e87a472dc7c28fd3aeacb3d6c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.37/zwrm-linux-arm64"
      sha256 "2a4595359c7b2d38e1978eb2d79f6f808927591876f3106a4eb12d5ca8a39741"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.37/zwrm-linux-amd64"
      sha256 "5e243c83538ba64a2fa01f216997ef8fe0605f944f64b18e9193b1c38e5db513"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
