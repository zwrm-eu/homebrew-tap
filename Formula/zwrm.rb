class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.31/zwrm-darwin-arm64"
      sha256 "7062eda09cb5591887b56559c214087c5d69ef2f33f9029faf4b97565dc162b3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.31/zwrm-darwin-amd64"
      sha256 "dc283dfd04c5bd865552a26e4d47b9f9b94a3963d089dbc7420f4e5d08e21c47"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.31/zwrm-linux-arm64"
      sha256 "61e56a5edc8754131aab54e5b442a5c43f2bba0c26be9805dbfce45d05296af3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.31/zwrm-linux-amd64"
      sha256 "bfd5e94d96938a54d3a4180a58c006aecff178c1ed745fe1a292ca45442296ee"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
