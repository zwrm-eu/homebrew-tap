class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.12/zwrm-darwin-arm64"
      sha256 "0e4df8a665c13644b783245a1c8a39151e14bc1574b49df9278dea9501ff8d06"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.12/zwrm-darwin-amd64"
      sha256 "689821fa821594689f6c65da74d1c7fa250368850543addbd5b99d1655410cf4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.12/zwrm-linux-arm64"
      sha256 "837a6e43bd5357ce8c236fa223790edc00ee9b46b72ea9e516a58ebcd860d35e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.12/zwrm-linux-amd64"
      sha256 "c8dabce54c52dac5aa6ed32b2bbfe6540a34f55857d5e2033b0a5ed2e5a1d3c1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
