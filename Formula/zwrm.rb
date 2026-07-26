class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.8/zwrm-darwin-arm64"
      sha256 "03fef253a96e578bb5701e2ba91a4909528ed0ac3d90a5215339ae5ecd83c87e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.8/zwrm-darwin-amd64"
      sha256 "fbeaaeb7c8cf1f6aa6452390d940c4b61af5fc810317b3bc232435695aa4c8df"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.8/zwrm-linux-arm64"
      sha256 "dd859ef63c4a85a1400d172b4e2dce2f97e211ab41d0a390fbe2eb6da0cbf5f8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.8/zwrm-linux-amd64"
      sha256 "f66d00e57bb49f5eccbc846b493f54903696292414e0642b9b9a0472eaed9f50"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
