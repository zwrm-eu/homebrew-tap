class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.3/zwrm-darwin-arm64"
      sha256 "4374b88ad5d9091115f4adec9400a70724021e8b6ebbd0dbe427261fe94d1820"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.3/zwrm-darwin-amd64"
      sha256 "047c460872ecfc38880aa0fb2d30971a3dffadfd6daa63f6ce2029347724812f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.3/zwrm-linux-arm64"
      sha256 "a3caf843b8d189a89a50ce6b7da7315c6d21a92e4e649f900f0fc3de1370e16b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.3/zwrm-linux-amd64"
      sha256 "c98c3adeea4413159636882e012c2497f1ae8277d0469e2f9475982572de9117"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
