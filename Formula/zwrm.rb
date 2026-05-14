class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.0/zwrm-darwin-arm64"
      sha256 "bfddd49861843aa7958f6b72011b6351ac2cfa9aa63b579c532715ca2b8a79d6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.0/zwrm-darwin-amd64"
      sha256 "527aee2ced17c248c1903e23bfdb9309bd031ef05faae0cf5a6e97f1326ddbc4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.0/zwrm-linux-arm64"
      sha256 "8207278a3ebbea789cad9f262761ab72cea02c584e672d673ab61e56e8ba7c5f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.0/zwrm-linux-amd64"
      sha256 "233093a38fa36476f10e697314f03875ffac7304ab05f9fb0f55f0f651194fe6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
