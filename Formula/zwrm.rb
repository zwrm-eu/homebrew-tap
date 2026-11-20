class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.11/zwrm-darwin-arm64"
      sha256 "b33849223079208cd762086c264e8b07222e6f568b44dd202d3c9c0bca46cfcb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.11/zwrm-darwin-amd64"
      sha256 "1b22569ca29a4283f6245c082b2e89513cb8d616074c5e10a3c3fd63e1bc0e96"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.11/zwrm-linux-arm64"
      sha256 "076827fd284d4352bd2ff0d95b33d57b98af0d23aca84606aea16eb283219165"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.11/zwrm-linux-amd64"
      sha256 "7122e5ad1ebe8974fe8660324be1a48f039bf90309c52c9a831f4734b949f44c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
