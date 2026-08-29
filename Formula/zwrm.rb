class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.10/zwrm-darwin-arm64"
      sha256 "2144c3104e357941a599ea5c86ec6fb4cf4511bf406333ca5450061e5101f02d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.10/zwrm-darwin-amd64"
      sha256 "3708006989c03792081256537bf0b1685734da0541220ee7cf45eed535e9c83a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.10/zwrm-linux-arm64"
      sha256 "2c1a51be0a5f582b5d3983e88b0bb10de611ae42f95b5d28d7921b30e4fab190"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.10/zwrm-linux-amd64"
      sha256 "4d98ea15af1ea39cd75c4a2f52130d6929a88e4e16e37ca7237f3685ef6a72dd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
