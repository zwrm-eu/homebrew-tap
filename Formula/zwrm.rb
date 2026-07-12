class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.24/zwrm-darwin-arm64"
      sha256 "57819ed5c40e10770da3eda710d42197fc0a478f61782b18d97aee797f6d79e7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.24/zwrm-darwin-amd64"
      sha256 "733e39dbc3a09952ef8b518adaceafa17ebef22b7ca21a6ac1832ca26b59313b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.24/zwrm-linux-arm64"
      sha256 "ab9ecc594e4f9a50992846ec0c9237ce3cfbb27cc10c37199101ede64f3e1a16"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.24/zwrm-linux-amd64"
      sha256 "cfb1560424720ce27289121ef41a48b7cbaf518e41fa18e1a2810efee4392eec"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
