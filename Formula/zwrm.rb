class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.7/zwrm-darwin-arm64"
      sha256 "e5c877141c93b72bc4c44b4012868792b9a5504248fe8dd9521f1b05ec3fc492"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.7/zwrm-darwin-amd64"
      sha256 "30d279048dad04e9d396c8b5a77aa230c5a9f11abdcf45d71044262932568004"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.7/zwrm-linux-arm64"
      sha256 "033dae4fb903f19d3dd7d0c64ce1eb7e8b45fc06880fe5f6059634e12f489d4d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.7/zwrm-linux-amd64"
      sha256 "2463cd3f62428b75240c55db8284fb34c7aedcae8cc1b05e297631467a21c991"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
