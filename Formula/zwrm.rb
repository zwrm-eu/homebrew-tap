class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.59/zwrm-darwin-arm64"
      sha256 "1f540ae323f89d44962986f91ef128ce7d09ae19c033732fa8c24cc5fc9bf01d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.59/zwrm-darwin-amd64"
      sha256 "47ffec36dcc5a8e997839b7cb4ad62fada3a3e26cb9711ffff3c3018690f0eea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.59/zwrm-linux-arm64"
      sha256 "842c3d2de8db2097d41664ca63f3eb8a627e2eb6c53159757102870d4ca7760f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.59/zwrm-linux-amd64"
      sha256 "d902434de8c0cabe363e66af52e6d922f84cf5d8c98e7b701966f14d076ba1e0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
