class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.20/zwrm-darwin-arm64"
      sha256 "6ade3fb2abdf4616dc991a85581cf4fecc170971b18ab00012d37b134824b330"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.20/zwrm-darwin-amd64"
      sha256 "c7ce0c459e65d455392f0d1d32ed21853bd619c0d8159f2c58a07388ca8b8618"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.20/zwrm-linux-arm64"
      sha256 "c2bbe9baa39e133be112a9a9fde0ca466c3813e3e139405f831b83be2f92fd2c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.20/zwrm-linux-amd64"
      sha256 "fc02d70f4eb55cf1e4a50d204425f20b8876557afdd5dcbd7cb0ea7bc21f7571"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
