class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.10/zwrm-darwin-arm64"
      sha256 "a750ff6974de48824e4fccdb1ef7fbcce63fc8d0fd3b955971e97beb7300eaf9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.10/zwrm-darwin-amd64"
      sha256 "f852c1d08df5509fccc229db5895e0367ab7e0230ce82d2aa60fab44f0c155a9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.10/zwrm-linux-arm64"
      sha256 "43461146906cd80a9c0a873941111c01f21a1d5107289dac88949963bb2ed138"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.10/zwrm-linux-amd64"
      sha256 "03e0de8a0bb5bf0a44af0e17420b7be6ad7ee1d8d74b2a2bcde0e70b00fa8e85"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
