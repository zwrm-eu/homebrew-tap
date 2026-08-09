class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.1/zwrm-darwin-arm64"
      sha256 "e2e0e16806bcbedf60e5e26cc4e46a0ba5335d049203371245fc8d7aa0e448a3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.1/zwrm-darwin-amd64"
      sha256 "2c6f67877a4a33e300c431abfa75d39be7764896b9f2de71317982f51b2585fb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.1/zwrm-linux-arm64"
      sha256 "80fbe3a6561f82726db0e0abea7bf539ff3b95751820958f96390c123662f396"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.1/zwrm-linux-amd64"
      sha256 "10a3a35685461ff16ebfb1d236fb90ebb4b40de5fad23ec1fd3db254f7596e94"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
