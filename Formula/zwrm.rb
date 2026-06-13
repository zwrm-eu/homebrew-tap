class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.19/zwrm-darwin-arm64"
      sha256 "6c32a0d5893b0c2fde9b079cf569a2b5fbae42a0525d9c1be06ea82be948db22"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.19/zwrm-darwin-amd64"
      sha256 "f41372bd5d2d9d9333f23a61f15f33967a96036102c2e1c63fc908d841602925"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.19/zwrm-linux-arm64"
      sha256 "93ffa6601c8af5fc2532e02e095cd0667ee08b12f76af2b3351d26720f2c28d1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.19/zwrm-linux-amd64"
      sha256 "ff818dc76a0fd2c856f364fb4be6ae80e0daa758159a20dc10e465db97ceb5e3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
