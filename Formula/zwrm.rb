class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.4/zwrm-darwin-arm64"
      sha256 "a39ac2ece659b35452c99ee33e9d45aeeaea088ec800ed0fa0929bc76bf330de"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.4/zwrm-darwin-amd64"
      sha256 "0707988d60cea874f379a38c3063eb7028b433d6e1428413021e4d02a7f696ec"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.4/zwrm-linux-arm64"
      sha256 "1d580865fec48f5d6135cb4d5a8b33d70e8178ad8afba35f9ce2e8cc496ce97d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.4/zwrm-linux-amd64"
      sha256 "06e43a90068e19c5182de3e9ba53364cb42c0dfb78ca942d438736eadda39dbc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
