class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.9/zwrm-darwin-arm64"
      sha256 "2e198e0c8ab429e91b9b5d3bcd5a635066114753dd05a7d6469a03ed6d38e836"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.9/zwrm-darwin-amd64"
      sha256 "b2649b53405bcee6b14d5e78c9f69ee9eea7af7afe355652f7d9d90a8892ba7d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.9/zwrm-linux-arm64"
      sha256 "8637bd71da7313113cef8ec5864b9acbd81826c55049ffbfead2dee220154d43"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.9/zwrm-linux-amd64"
      sha256 "9b2bfd23a0ae51bccc3349284392bfd73a4076c4249f2b02644fb0116c2fd356"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
