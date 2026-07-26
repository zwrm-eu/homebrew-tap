class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.3/zwrm-darwin-arm64"
      sha256 "205ac08850f76183fb7002aa41f5f428ea72605804bc6a7eae37da2cbacd0eb9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.3/zwrm-darwin-amd64"
      sha256 "bc600f12db884711498ff50e64d06f0ea9c89d3f1a29bd09bbcd32d97617587e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.3/zwrm-linux-arm64"
      sha256 "39f61b6f92467b10382b32a1b94c7faa1dfd4cba1f91bea78cd42ed11ce14296"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.3/zwrm-linux-amd64"
      sha256 "2cb805e4eaaf53d0a335f2bca4189967049765e492f961a8bfb930d608a9cf5c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
