class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.40/zwrm-darwin-arm64"
      sha256 "8c4d75a68e3fbb7f8c2e3efa815477fee024500abbff8b27cbc1f61fc5fcf5aa"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.40/zwrm-darwin-amd64"
      sha256 "654fff93322a1da6bc8adc38b0eeb68e2a318b19320711bfc5c2109afa2c42f7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.40/zwrm-linux-arm64"
      sha256 "db3ec6a11d5e2f3f77baed045ed5b97e4f091b9a77ad0c0f6a8ca87197ffbd19"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.40/zwrm-linux-amd64"
      sha256 "30133ce3bc17b1314743f1c4a1ee48b2a9a5bb3ebca849b87be5bb9c9e27d00c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
