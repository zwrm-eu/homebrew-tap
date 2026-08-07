class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.4/zwrm-darwin-arm64"
      sha256 "1f88c0c847b82a8b1302debfca43d3901ed329e4a1349432b3776564224da797"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.4/zwrm-darwin-amd64"
      sha256 "67989c19d17c90c35ea44c3e0f65894544e9044b4c28515ae3459419bf690f79"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.4/zwrm-linux-arm64"
      sha256 "34a607b0264809c35d59095a9d5944aecf676d3ce787cb3fd50c3513009656c2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.4/zwrm-linux-amd64"
      sha256 "c56080dc752d0d0533b0eb6eaf231270bfec46762e47b442e1ecb1eaba662259"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
