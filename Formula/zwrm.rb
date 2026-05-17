class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.2/zwrm-darwin-arm64"
      sha256 "7ce6173a17251e9299f5d0243756227ea18876806fbb781944cab1828c329741"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.2/zwrm-darwin-amd64"
      sha256 "0fd8357bb104bb1a7204239e72343da08e8523ea2e877fb4ac5186a4039a9db7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.2/zwrm-linux-arm64"
      sha256 "5e69674199a2cd8c4ee38b439585d54ba6f83716b672a4b6c030f457a7f2eb6e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.2/zwrm-linux-amd64"
      sha256 "996387062444d7d43a2da9c4f8b27071d97423950f1987057960a492281b9ce6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
