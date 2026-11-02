class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.5/zwrm-darwin-arm64"
      sha256 "6be84adeb1918a688b2546b2b45338602c8006416508a906ea8dba58c3520a2f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.5/zwrm-darwin-amd64"
      sha256 "0a01ce7a4907fc53faaf1dd71ab567daadeba046b348c8f34ff94213f3c39c42"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.5/zwrm-linux-arm64"
      sha256 "8ed75e3696d8ee12f28bb0c331fae4d2735a624526a4fb3d03756dfa9372723d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.5/zwrm-linux-amd64"
      sha256 "26256fd4c65975f00d5cb7ed15b1416745d822502bbd8e735ba5ffd7eb0a2881"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
