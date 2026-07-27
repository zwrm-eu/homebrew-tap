class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.1/zwrm-darwin-arm64"
      sha256 "7fb48edecd8ea5b2d3896fcb93fe4fee9eee0a8c023bb36da90bd6c7dd305d14"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.1/zwrm-darwin-amd64"
      sha256 "67c9d2526cda19fb5a12340f917f1c451a3835e9143dc8492ef5ba583a35229c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.19.1/zwrm-linux-arm64"
      sha256 "65a420d6363635212196e36f15375e766fa7a234867d7d040e60fa4e800c8734"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.19.1/zwrm-linux-amd64"
      sha256 "a5f06846b2a047b4182a264b602078d0a9ec5fbfd19806997abbb4e1476a887f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
