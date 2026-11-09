class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.36/zwrm-darwin-arm64"
      sha256 "e1c4c790e4b7c78f70a9aae6bc7ec53ba3fd38fce36289fdebc0b308a43836b4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.36/zwrm-darwin-amd64"
      sha256 "505a51eed149763fdd0466ec0c805bcaccbf22daae7db6539778d29d75f379e0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.36/zwrm-linux-arm64"
      sha256 "9267200a6de8f7cacc03d3ea121c29fe3b174912857a43effef40943e2342ed8"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.36/zwrm-linux-amd64"
      sha256 "ee217c4c697dbcffdc9b2615c2dc966fddc45fcdd59cf2db18ed4827e6ffd895"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
