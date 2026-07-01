class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.2/zwrm-darwin-arm64"
      sha256 "d974e9f4ea92ba555f5579c137097e9f976da50f5ca618d6e3e499481d725ea2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.2/zwrm-darwin-amd64"
      sha256 "1e99247e988070304904bd047bd5a5b34a1c9a22f92ee438826a379daea46cff"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.2/zwrm-linux-arm64"
      sha256 "79d6b659f0818f9ce4c896868690809dcd0c672450be453630e5b2836b074221"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.2/zwrm-linux-amd64"
      sha256 "a24ecb003a2416ef6b76470ff97597f69506aaf8505822c02829988096c2f7ba"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
