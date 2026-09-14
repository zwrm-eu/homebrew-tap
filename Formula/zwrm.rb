class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.0/zwrm-darwin-arm64"
      sha256 "ea88fd2331d6bd40484461446d8c3ead56606834c866e93810e47d7af7365e78"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.0/zwrm-darwin-amd64"
      sha256 "7e7beda9e4e73206abad0ffff39f2d6639be522fc0edf9eeac1b148c785dfdbf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.0/zwrm-linux-arm64"
      sha256 "0c89f53f7517625bc2adc8de16aa61e791598ed65835e72526d4726d15f3d36a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.0/zwrm-linux-amd64"
      sha256 "e4391045dfd28caad71d7c5117133197a4e6ac7afe27692ae9316a2c4af73bd8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
