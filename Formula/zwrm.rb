class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.22/zwrm-darwin-arm64"
      sha256 "6e53e6c47c9d2dc592590ddea5f4c0df15a6d010b7c2f7af714a0433ce76485a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.22/zwrm-darwin-amd64"
      sha256 "5821fe8b0cfc5a988bad21620b45160824e81075ad5f7d88b3da3a68f2b9baed"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.22/zwrm-linux-arm64"
      sha256 "4ead4b4e0f01cf7f79c2782715dff93b47feb4ed80b62d2cb024f3aa1ac524ea"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.22/zwrm-linux-amd64"
      sha256 "25c708777f2201706117a8216b5139e9bbaeeebba3e8e7dbeccdbfb4eccbfaf1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
