class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.25.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.2/zwrm-darwin-arm64"
      sha256 "5321ac359782669f7c7b3aef18ee3fe6409a3738d2f0aeca54aa983ff5a58625"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.2/zwrm-darwin-amd64"
      sha256 "1f9c61ff5d1e303b0b945f7195e5bc26b0ca4f34ac7d0b58bb4871d5ab61dd36"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.25.2/zwrm-linux-arm64"
      sha256 "0a200172b64ea8bc2d29509ccfc4b3be479fc9ed70f525d47f0d986f0cbb10e3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.25.2/zwrm-linux-amd64"
      sha256 "feb4768cbd033476f362558950380c3b34d6b0673b932b0b3a62258f2831ec0a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
