class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.9/zwrm-darwin-arm64"
      sha256 "20cb6bfa42795136f3f1fcd4f101295ce7323e3a8c12e831a37e8c8e7605d9c8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.9/zwrm-darwin-amd64"
      sha256 "e7b050773a96e994017a384e27755475ec538a7459fbf4d3dac8a52f390b348f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.9/zwrm-linux-arm64"
      sha256 "219fc076472262e991253f4428ad451c9ce5b5c268a4d3913cd1aebfee0712ad"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.9/zwrm-linux-amd64"
      sha256 "c6535d055ac15ea585543289e04463fb363c3f0b76425c883f11401f1ea008a5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
