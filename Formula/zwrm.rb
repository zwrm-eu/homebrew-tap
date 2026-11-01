class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.3/zwrm-darwin-arm64"
      sha256 "f7203baf04380253b6adc08968dd5e853edb6b783738c512a74257a2a317c528"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.3/zwrm-darwin-amd64"
      sha256 "39d0dd28c5b66ea6720943fa0b2882dde801196c7da2d7994ec59f3467153727"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.3/zwrm-linux-arm64"
      sha256 "0c5c8221e502c6a92b8c861b4cef1b0000f5082da7211aef1a5fb74ce5a0b8cd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.3/zwrm-linux-amd64"
      sha256 "cf6e5c7265c4fdcb05cc806825682f48cb3b03c9876031e98d00b17b0708f801"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
