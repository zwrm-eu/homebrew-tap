class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.1/zwrm-darwin-arm64"
      sha256 "43427d207c50a7b519328b13fe830ad48b15c299f75df820fd4f470482a38d3e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.1/zwrm-darwin-amd64"
      sha256 "22cd12e9755fb4bb6bfc97e602c400fd2a1364191d32ebaae6f522d26b9532b8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.1/zwrm-linux-arm64"
      sha256 "6d7e70632a0f72f54e199b9c7050e22cf4aa28d74663dd4d73ac0ce06bd3d62a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.1/zwrm-linux-amd64"
      sha256 "c9674af1d7c8ca62de2d1bc8c81cb48f493d4fb2eba76ea11691204a7119b6e1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
