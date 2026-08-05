class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.2/zwrm-darwin-arm64"
      sha256 "28f1a9dd0b36427cec06c33f63bb683bf2844757805d8d0fdbad9d1e7c9432f3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.2/zwrm-darwin-amd64"
      sha256 "43e92face93a40f73f651071eb02edb9fcd3d82c159a19542e71a3c1179f8113"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.2/zwrm-linux-arm64"
      sha256 "a2ddab893ea8dbd2a9f1c2e2b60fa3a1eedf5dac9fd430d17d93f59559870b29"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.2/zwrm-linux-amd64"
      sha256 "11dc0b9f963d3c8aec12566456f0f3efd60715a4dd622e3b6df9c81648084d8c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
