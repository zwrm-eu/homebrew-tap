class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.15/zwrm-darwin-arm64"
      sha256 "b69b10d4bdab387e767480d1ae64f0a4920a7882c33ee02d360da13fbf50e5a3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.15/zwrm-darwin-amd64"
      sha256 "3e5d3e61e52ae847d34f8cf6864756c27ebdddaddd0e174066f6441ea745e945"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.15/zwrm-linux-arm64"
      sha256 "f234bbe9673ef608a33c376b1646b6d896b777fdb1cc29398ecd051a404bd8e7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.15/zwrm-linux-amd64"
      sha256 "bb05fe8944be76077920fb882b9b6756ea3a8b6a4d5b74f770314f4238f4ee1c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
