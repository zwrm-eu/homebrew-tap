class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.26/zwrm-darwin-arm64"
      sha256 "5af509673ce642048688c1c4a8c782eaecf2c284cdeeb37938b7b1e4dfdf4785"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.26/zwrm-darwin-amd64"
      sha256 "bc13f1447d6c01816dfab284470060502c9f99a89b600a76536e857c86e51ff7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.26/zwrm-linux-arm64"
      sha256 "87db8bb6eb59fbc467a8334ef8141d85f4ceac227b6680321c4f2cfab5bdbbc6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.26/zwrm-linux-amd64"
      sha256 "21dd9a025813eff0d20decfa92958265a833d7b93fbe29f40ad1461c573b1a00"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
