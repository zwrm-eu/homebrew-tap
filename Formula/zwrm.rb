class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.38/zwrm-darwin-arm64"
      sha256 "98979a8bba2b32243be3714fa6a367432c340a9c6ab1db78df8079cd0c095ec8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.38/zwrm-darwin-amd64"
      sha256 "cc69ded3d6b47836653b7ecf3fc847c088e3d0938132e9ffb381ccd44439119a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.38/zwrm-linux-arm64"
      sha256 "a42f1a19e8de2d9fa3f033fa4c634f82939728158f343fbca7887f67c9a3255d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.38/zwrm-linux-amd64"
      sha256 "7e2c8ed3c9aa70c05d7ed86e434152eb91f2ac765d4fa5b795e88e3d2d01df2a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
