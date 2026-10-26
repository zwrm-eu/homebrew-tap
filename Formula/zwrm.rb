class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.23/zwrm-darwin-arm64"
      sha256 "89e396918963a8ba8209ef7c879efe77e1e5fba7ccd44c813f6fd2082a1ea535"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.23/zwrm-darwin-amd64"
      sha256 "71ae3c277bb6274cdb5736f7adf43016dd43825637e293d7aabc415a7b8d657f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.23/zwrm-linux-arm64"
      sha256 "c62dc27c1992f3c5107b25f1f1093b364ae0581f6d3efb71941beeeef75ab5e2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.23/zwrm-linux-amd64"
      sha256 "95d9d42b04ac4ca291f39aa53bf10ca644221b964fc1f537a5a185835638c6b3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
