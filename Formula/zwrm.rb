class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.2/zwrm-darwin-arm64"
      sha256 "ab08575113ddc36271582eab35ecbff17f2f0ebcbdf5d0678b2aa4c887ba3033"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.2/zwrm-darwin-amd64"
      sha256 "9fae845e60a086f3eff153d5d2a99babe88a81d62e625bad1882d316e27d1fb9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.2/zwrm-linux-arm64"
      sha256 "b32231457b777add35195c2f5d95448e6e25ddd819abf4e3fb9986b5ed33d91a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.2/zwrm-linux-amd64"
      sha256 "3ef73032cb96cd51c836a0ed62d6b4a650b6e24009946598c2fd3e260eb4d9f6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
