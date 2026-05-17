class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.1/zwrm-darwin-arm64"
      sha256 "55591b22c78253177c21f94e2ba2425d7abd1ffc308335cd21ba4788d53854e1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.1/zwrm-darwin-amd64"
      sha256 "c6442c4c7121fc08b283a7bf1cc3300ade744bbca15b9b829d2c03a818c30d37"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.1/zwrm-linux-arm64"
      sha256 "e089f028128183c5c777a09cd34b473fbaaf9c7b4048bb3774ff76f6dcf65839"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.1/zwrm-linux-amd64"
      sha256 "262ab3d0d163eeeaa9b4fb5a4072fff20b56d67259e1eaea8ef0006211a1c5a0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
