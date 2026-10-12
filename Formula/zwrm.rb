class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.32.0/zwrm-darwin-arm64"
      sha256 "341f48d22c34ed44755ec07610c181c54acda574a59ea3e93f0bf2101a52e605"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.32.0/zwrm-darwin-amd64"
      sha256 "273199ac044aaa9eb673e52ee6fbab3ae58fa4360b261c0b58deb21323201a74"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.32.0/zwrm-linux-arm64"
      sha256 "a47464b63b7d1e48f9f6b9522fa85cd19342d565cd4fc94c24131f478a899de6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.32.0/zwrm-linux-amd64"
      sha256 "a154e61444159f4f70c9e1cd9865964c6619ce80445780d562798b4b706eacae"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
