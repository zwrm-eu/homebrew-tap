class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.0/zwrm-darwin-arm64"
      sha256 "79a09c65e2dc628bc83c4332dea68c750643fab063955d13bce064c11c525fe4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.0/zwrm-darwin-amd64"
      sha256 "c40d07ae0435347e9b257b2537c2aaa2b406f40fb28577207dab5fc91971d38e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.0/zwrm-linux-arm64"
      sha256 "ebc03c1f3724eddd210b91b74394a03171da83865f21b738a7636eb8f79760d0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.0/zwrm-linux-amd64"
      sha256 "32b1dbd92235ec951a766a6b8329b6fc307d2817a0a3714ca0d17604f49d55e8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
