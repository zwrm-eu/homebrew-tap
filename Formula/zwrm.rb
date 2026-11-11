class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.47/zwrm-darwin-arm64"
      sha256 "3988480a7a31cfd14f76fbdc653134e1341724fc189dd2c73202fa9dca99a935"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.47/zwrm-darwin-amd64"
      sha256 "67a57b1638f714966de87e8a192564f3a68bf83a48ff2c7d1b1ac22a5ac8bb7e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.47/zwrm-linux-arm64"
      sha256 "9d73c51f06fa04a528c89552f8100129f8790193205ff4fa590c2e10c5392d73"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.47/zwrm-linux-amd64"
      sha256 "1cebf176c50405cf5c929f1e3019ac9c3a7b6063dc11f19d8373009bf311feaa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
