class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.32/zwrm-darwin-arm64"
      sha256 "82887ded436dc3cf212b300b85c2e7a4c18bf410273675b11dceb032b302b444"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.32/zwrm-darwin-amd64"
      sha256 "a205efecf97eb92a2f55f19aae0453aa69b9f7747f6b3f6ecabfae2f5eec0d0a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.32/zwrm-linux-arm64"
      sha256 "d1f93a48f5aba19df4cf80b7d105b2093b89e8e6025a6f4da3822bd8cbd5c085"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.32/zwrm-linux-amd64"
      sha256 "bf3015db233e19d9afe49d31de5f3cad4c0cba085e8b8f645d87de3ef04fae91"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
