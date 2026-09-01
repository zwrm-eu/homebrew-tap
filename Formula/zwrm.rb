class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.0/zwrm-darwin-arm64"
      sha256 "b1ba092c057dc3d46546a75a917886fbf5422c0339980998aa04e416b96b723d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.0/zwrm-darwin-amd64"
      sha256 "7531f2bfe5877360b329311d995af70ab81c3884579d50b5730ad2e4c004d913"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.0/zwrm-linux-arm64"
      sha256 "c2848b53c2c121860e21f7ae7a389af02b627cc1366d01653c4d63e535b470d0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.0/zwrm-linux-amd64"
      sha256 "849db79d447abbec1fa0925517478892c5e2a9716d4ce1265142e0d60702db53"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
