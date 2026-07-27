class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.12/zwrm-darwin-arm64"
      sha256 "29d0a502d35aa8f5ae6cee79ca50261efe25d671eb281f3cdc3b364e953b47ec"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.12/zwrm-darwin-amd64"
      sha256 "0d3c2c08ef5aeb75b1195255d77ee4dc2bd9f6f02d0e2265cdf5be0369023ffd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.12/zwrm-linux-arm64"
      sha256 "e2724cc39bd5dd45a557ce724bed11a231847d62dbfd1a6bb979e74760d6d513"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.12/zwrm-linux-amd64"
      sha256 "87bdb72ba45ef2e5a7aa208ecc8584203eb71d5acd51ff4890e35d8b5497fe6d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
