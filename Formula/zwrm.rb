class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.11/zwrm-darwin-arm64"
      sha256 "44157773009bf47f2cd887a338a6572b95a8527d1e058bfca84248838e16e9f2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.11/zwrm-darwin-amd64"
      sha256 "d906a447fc2ab118c2bd9d4fb63e1ccb051074a4aaeb962452b74e911560d9ae"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.11/zwrm-linux-arm64"
      sha256 "4fa43ae030203159761025b54b65355d1cebde249f820337851232403dca3edb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.11/zwrm-linux-amd64"
      sha256 "f51f0539d83fe8b0e5b4ed8309cab76b2669d76c189fb002905a1472b64a82bf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
