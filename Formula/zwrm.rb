class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.23/zwrm-darwin-arm64"
      sha256 "86820dbcc9d61108d78549f9c76dfc9ba5546e787f3e1699246b50f5800bc12b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.23/zwrm-darwin-amd64"
      sha256 "2e39565c4c1c1d312d4c5e72f909838f455cee8bbd32ff813d40630cbd5467cd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.23/zwrm-linux-arm64"
      sha256 "11e4fa4219c336363f9f216367eab06035a402a8529194f38e0fdfbc1bb90c0a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.23/zwrm-linux-amd64"
      sha256 "a87013ca4c0e325d136b47bd87afdc4f78fe413994d4087cee5eb59001f12e44"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
