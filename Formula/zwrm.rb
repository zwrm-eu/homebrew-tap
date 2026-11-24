class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.22/zwrm-darwin-arm64"
      sha256 "dfa8a1ddfc2af9bdde525a2397a80bb85a03322141e81782e39d9069ae96d5da"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.22/zwrm-darwin-amd64"
      sha256 "9743766bad1085b326dfb467e8dc1fae4afe6f13599440e2f6bd4b7addce4dfa"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.22/zwrm-linux-arm64"
      sha256 "71c5e3f12864d2de58287ad11ddfed7dbc54da1c780eff74d3e8d28ef9b6935f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.22/zwrm-linux-amd64"
      sha256 "c6e69202f00045dd09010edf9bd9e063ebf0770a5201552358edb084b82f1760"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
