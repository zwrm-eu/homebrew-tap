class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.6/zwrm-darwin-arm64"
      sha256 "71db60f672dc0dbf2a474c098e3601288d1bcbc3148c6290b094b2e9cbaed042"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.6/zwrm-darwin-amd64"
      sha256 "9fe6c5b99ba701cc43649514a7c47258224587fd9465d11fb0c90a4cc2e5a015"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.6/zwrm-linux-arm64"
      sha256 "3515de313f97c04bed86e8098d5a85e1d96da98494ce629347db4952940a5298"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.6/zwrm-linux-amd64"
      sha256 "3a52e22a6bde0ccc23f020e35dc8a3fb7046456c56e89ceab716b507f1ef964b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
