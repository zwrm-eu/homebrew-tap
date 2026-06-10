class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.7/zwrm-darwin-arm64"
      sha256 "0de821dd811818b0f80c57c0395787a4a5a01fc38ccd14368c9387cbc48c4b93"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.7/zwrm-darwin-amd64"
      sha256 "d48a47403996a19f1de33442211309867a90d579ffde3c0a080d64221b8849c9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.7/zwrm-linux-arm64"
      sha256 "6e601c6fef3a5800ab03b9d1f202d980c667b38c99cc60830a0a982669bec3de"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.7/zwrm-linux-amd64"
      sha256 "0952d3b0045d1fcb1d64a844c1a6de8d5b72dd1643ae1eaedd6bf64bd2046e16"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
