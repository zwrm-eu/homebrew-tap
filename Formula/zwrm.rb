class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.2/zwrm-darwin-arm64"
      sha256 "ce641d326d17240d757d5d762cd674b7331b7823f9a167e073a861b507518ff2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.2/zwrm-darwin-amd64"
      sha256 "1e78af175bf86705ee0303e654cf590415c29b0e01eb3490c435357ae61563ea"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.2/zwrm-linux-arm64"
      sha256 "100a315b04253641360786e81f444e93378758cb12abdec8a270f7cba206213f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.2/zwrm-linux-amd64"
      sha256 "d788fe51d0db0b285a93f8ae6589248834b5548d7a1c65aea6599b21b852a9da"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
