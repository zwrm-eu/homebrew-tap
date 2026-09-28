class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.19/zwrm-darwin-arm64"
      sha256 "44100bbbd7a8f68c0e5a895eda7ff08c59d551c1821c228cf326b64c09bfb663"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.19/zwrm-darwin-amd64"
      sha256 "948130449149c0b62264a555943500659941859fa7619bb4d3734ae0d44eb532"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.19/zwrm-linux-arm64"
      sha256 "a5e81caf64325d474e82f15879dad64e3b002d64b3161f27b534038eb1e4bd1e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.19/zwrm-linux-amd64"
      sha256 "b965b01eab5ce0b2cfb717b6cf64fc13174fc7c09b2b79437ad567263bb16708"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
