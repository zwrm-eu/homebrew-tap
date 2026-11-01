class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.0/zwrm-darwin-arm64"
      sha256 "f6502ccb180638e7af8f1756b99c636ccf413085bcac14a27e440447eb453fd8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.0/zwrm-darwin-amd64"
      sha256 "0caea0102a5ff7cda19c0edc75de379fe6cb8ed162bc2a631b614bcc741324a7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.0/zwrm-linux-arm64"
      sha256 "fbb998d646286b962c049f1fa0c46f11c60437eb18b12efde84816e944d78931"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.0/zwrm-linux-amd64"
      sha256 "13c929c10bf124a6ad61940deecedcc8dc7218a3284bd9264dfadf63df454005"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
