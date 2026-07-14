class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.32/zwrm-darwin-arm64"
      sha256 "83c9b7b3310b55d40532bf4ef84e306032d08b8c24160d882d97b0ced292dfb5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.32/zwrm-darwin-amd64"
      sha256 "d208d336bedebecde91b02adc048c581b507021c2c88b7bb7e5a443cc7874b8a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.32/zwrm-linux-arm64"
      sha256 "0920642bd671372cae85c5ae06debe011a2b425831dd7ccf8b3ab0f4898d9077"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.32/zwrm-linux-amd64"
      sha256 "eb253f8514715b8f74d5cee54578326bd957cafbf7f2bf3808a56ab994dc1acc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
