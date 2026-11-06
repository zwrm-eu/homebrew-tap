class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.33/zwrm-darwin-arm64"
      sha256 "d2e878e40a7e0b38240950e47adc819fe0ef377d81d51b7f4ad71e07c2805f98"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.33/zwrm-darwin-amd64"
      sha256 "6313aaee52c71476b289d28a676d37a8b306f86e160300f10898426572ce29e6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.33/zwrm-linux-arm64"
      sha256 "17634deec88440d14e9dcbe1c277ba91bfa78bc471eba802a7b1f71e0e503ef4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.33/zwrm-linux-amd64"
      sha256 "788c83a68ca4383608109d81d1de32e23958dbcb94f38eca7fa4e56e96f06f29"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
