class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.29/zwrm-darwin-arm64"
      sha256 "018d2c9eaf15abf82d3618265376bb78f38ec753dc68786d0a1d9bf007e342ce"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.29/zwrm-darwin-amd64"
      sha256 "646ed197716bbbc277243b8308cfce589d2392a72123356794518c331532f234"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.29/zwrm-linux-arm64"
      sha256 "193a68d8bec08a0fbbe927a7bf513f1a02b39883d76162acaab7c37864f7cc44"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.29/zwrm-linux-amd64"
      sha256 "acd502fa7beaede77b5b063a8210abdb133f36557991364361ad84425f86a4d9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
