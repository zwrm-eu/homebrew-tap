class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.0/zwrm-darwin-arm64"
      sha256 "64309b3232facd5304f6a27da1ce69e87e3ba9291b144c72d39099da810d8930"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.0/zwrm-darwin-amd64"
      sha256 "b001b52fc63734bb97f930ab827726b219e9ac34194b25aa3e1d7fac30ef202e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.0/zwrm-linux-arm64"
      sha256 "da9aadaf4081d9fdc50842ea996e9e390656fee3dcf6d71b9f100665339154c2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.0/zwrm-linux-amd64"
      sha256 "2a133e38f8a8789415e3821517d3d13538e567456fd668cc78ae968a569be4b0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
