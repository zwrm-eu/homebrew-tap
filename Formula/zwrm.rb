class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.54/zwrm-darwin-arm64"
      sha256 "6710f5b9aedcfde854203976baa65160c3627e6095ead67aa2e3e7cf29cd63dc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.54/zwrm-darwin-amd64"
      sha256 "4cd7bc56d5457b0ff6963558b73bfa09c7cf961dd4cf6f84b2cd917a05008d54"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.54/zwrm-linux-arm64"
      sha256 "11e6608bba0f4c2e10b02b0ddfc0c1026e7b4da415d0c3ba67c76c52133041f9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.54/zwrm-linux-amd64"
      sha256 "daa4ff1ba88aa4195d032d7deac7cbf725bfff1c5a636a51187392bfa941df02"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
