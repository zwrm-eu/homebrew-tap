class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.0/zwrm-darwin-arm64"
      sha256 "f060583c094dcc9ca4082bf2f643f9ba6770818955145a1e2b85feb768b73235"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.0/zwrm-darwin-amd64"
      sha256 "f00be0b14367433aeb0ba0091c92d3548671c00dccdc687383f0c30459120889"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.0/zwrm-linux-arm64"
      sha256 "437b2a7c1f977e44a212c3a2f6301ebe557f266324520d56e6640c3fcd2ac1f7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.0/zwrm-linux-amd64"
      sha256 "ac5440811a94b1962a8f5fe03f378768c85c8c823f6edf69a8d60f6a05c5a1d5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
