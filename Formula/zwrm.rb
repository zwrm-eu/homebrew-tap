class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.43/zwrm-darwin-arm64"
      sha256 "6f68e49b2361215f396d3cf40e939afe1fc9990f84fb6565fed60c0c644269dc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.43/zwrm-darwin-amd64"
      sha256 "65263ee359a0be6d9156fa77302e96c6aaa505880d9de1312e94f91991b40f26"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.43/zwrm-linux-arm64"
      sha256 "ad863bced1c838d326f4f761f938eec30d94982484e633a538dbe08305ecd1c2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.43/zwrm-linux-amd64"
      sha256 "90285dd44608eca9699a428aa926a0a156e189ec62bda5c91cddcf4efaed1787"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
