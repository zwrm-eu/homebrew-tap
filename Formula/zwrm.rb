class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.46/zwrm-darwin-arm64"
      sha256 "257825d4de609427b193dd9c75f9176291ae8bafbf44849716117a4d5d2ff320"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.46/zwrm-darwin-amd64"
      sha256 "9506e8bdd6da2b2eeb2de964b6e004e0c8ee4a0dc36e4011a7cd11ab25980260"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.46/zwrm-linux-arm64"
      sha256 "a5fd30d5bdb3ad7ec95e0525c8632d3c020128a01e45d12ee48a2ec5ef3b912a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.46/zwrm-linux-amd64"
      sha256 "76accc933f8eee069bb5a982635adf86d287aeba3213c8ce8adea3bba751e9ba"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
