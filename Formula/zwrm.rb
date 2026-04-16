class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.11/zwrm-darwin-arm64"
      sha256 "5065ebd2be4a0e1d18fa1481cd62a6f8ed01a6111416cae46a53a55edeed19b5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.11/zwrm-darwin-amd64"
      sha256 "75b619c897bb8aa6d54d0c8868d52401b63dcc4ebcdcb180f4b78b5bda36c4ee"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.11/zwrm-linux-arm64"
      sha256 "a2971c1c8fb68ed1dcae13fda2f0dd03ed7d827947ff72c01e77988b26483a60"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.11/zwrm-linux-amd64"
      sha256 "9a747dd80a612973536458df689147399fc4166c5bc3b22fffc29fc66670f913"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
