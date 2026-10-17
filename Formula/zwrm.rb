class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.10/zwrm-darwin-arm64"
      sha256 "a0f02b2a1bab39946d27f5ab51a0529acec0307b24e1402488aa39280a416fbe"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.10/zwrm-darwin-amd64"
      sha256 "74ea573b231f2b239c0990eafa7eff53521709ec72aa0c3c326d506c0084cabc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.10/zwrm-linux-arm64"
      sha256 "3010b68ebff5c7b6afe4bcd2793fc70c463a38c0b2c734b7abba3d860879fa1e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.10/zwrm-linux-amd64"
      sha256 "f2935b225740430c078ba633518a52328faa33f9a9dc59382143b6c580fc087f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
