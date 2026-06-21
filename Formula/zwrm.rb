class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.8/zwrm-darwin-arm64"
      sha256 "7451f8a037eada20f122041b46e459114dafd4cc995160f738d609c013da8a3b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.8/zwrm-darwin-amd64"
      sha256 "9ddf9f380f9adc17295ce46f4e2a21cec42550c5a253267709fbfef6d55ca9a0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.8/zwrm-linux-arm64"
      sha256 "d54eb38eca97dfae3808503f8a79389073b8a1fd6103da395109f496f0634fa1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.8/zwrm-linux-amd64"
      sha256 "0753edbe3cb685a6074ed9d3976bc1940e840f63fb7d705afea103430035d8cc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
