class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.7/zwrm-darwin-arm64"
      sha256 "a78ec04903f93967599146e75ab28c8728f1b9648593ac3d51ba2e239d245aae"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.7/zwrm-darwin-amd64"
      sha256 "2adeb40330ec9cfd85212e32889c00d81e1da5c51449448221e574d4ff2a4d0d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.7/zwrm-linux-arm64"
      sha256 "87aeb6e61900892110e910509b37a822d9e5fc76220b576526d9d016f5612d0e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.7/zwrm-linux-amd64"
      sha256 "64a4ff3533d41a5c34c86cb365f9ea851044534a6408e878b05e50c11c908ef3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
