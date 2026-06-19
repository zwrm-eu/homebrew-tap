class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.6/zwrm-darwin-arm64"
      sha256 "58bc68e6fa43c777784aec82016952e4b92eebf4be87059b15ec0f176a75de43"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.6/zwrm-darwin-amd64"
      sha256 "bcb5a6b7d869b52856d2dda2ff27767b58b565ee33a7b909241fd50c1bf1f221"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.6/zwrm-linux-arm64"
      sha256 "732e2f2e3f681b158f0112e5f0bb37e1e28a61c774c234a35ac1d8e3414237ba"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.6/zwrm-linux-amd64"
      sha256 "032d22623cb491b3631f9927fb9dab9212161d454b23a12023586816a0e2ca14"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
