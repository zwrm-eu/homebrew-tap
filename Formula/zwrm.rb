class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.13/zwrm-darwin-arm64"
      sha256 "2a1c3e4d36e1f340727ea0c5eef04c9b374441052b1f33920e29325701a4208f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.13/zwrm-darwin-amd64"
      sha256 "f96241153e13b2224cb411195eb805e05a5e6a2697039d1b384f6b4d57581d6a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.13/zwrm-linux-arm64"
      sha256 "1bfc0289b3abcae946e1eeb993ee5d370ca3f921be1e264732a825a2b95c919b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.13/zwrm-linux-amd64"
      sha256 "fc95e74dd5939c84211b71e76db3ab30a054dde5d083cfe83888fc07d8ccb611"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
