class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.8/zwrm-darwin-arm64"
      sha256 "c52d81eea9402b32adbb2f5a4e76bf839cad493c654d924f4565a00a2bd80f6b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.8/zwrm-darwin-amd64"
      sha256 "b46e747e27ca62fdf4b25be4493d44668a9a77748d359da86b18036c748066a2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.8/zwrm-linux-arm64"
      sha256 "0eca7ecf131dc2dfb693d89a9d36123a4f1cc35c0d12e492f5d9283347f94acf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.8/zwrm-linux-amd64"
      sha256 "c4840ddf433e7db5248184fc3ea816c44cc823f8de5612076ded489e86c8a245"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
