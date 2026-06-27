class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.14/zwrm-darwin-arm64"
      sha256 "332d91f9ba5e6afa3cd4ec3f3d6b193357bb5901c39e4834b7fc5ab5b6969c5e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.14/zwrm-darwin-amd64"
      sha256 "69499f46c25bf1f4e375430bb43aa5b48b39e1d2b78ca0d438ab995a295f4ec5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.14/zwrm-linux-arm64"
      sha256 "324ab9c814a7849a3ae9d67f4d8f37220f501260a3a919ad905436df8af7b7d0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.14/zwrm-linux-amd64"
      sha256 "8453dd57efc40318700bb8f2a386fb2b84ab781ad52e1f96bdf3a0ab7ea207cc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
