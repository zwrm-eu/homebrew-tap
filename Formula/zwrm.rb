class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.6/zwrm-darwin-arm64"
      sha256 "d68fce16c438cc98e8a42314b48281ce4b2a886c907d733ed244abab0b1a9869"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.6/zwrm-darwin-amd64"
      sha256 "018631c4781aa07b41aa7d817116b81e80a36c9ef186f485be32c1079e2398b2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.6/zwrm-linux-arm64"
      sha256 "2013c641b6f84b9cf0009a24702808aee1cdf8d3899ba484f2755c4d97c63682"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.6/zwrm-linux-amd64"
      sha256 "5d23acb50f37b09b57119e5bdfe736c4eeaf3de51a66609426e21e4784820301"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
