class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.5/zwrm-darwin-arm64"
      sha256 "f2f4f9a152f90cbc0ae4319aa6ebcfab006337c0d23c47e7bba97866be94f724"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.5/zwrm-darwin-amd64"
      sha256 "ab3644fdeed72ffb33e3272c3b871c18b1f3f1ba8a5493b162ace843c99f6cf3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.5/zwrm-linux-arm64"
      sha256 "6923f3950f8b1a4848deb603d41e43867522332c2a7c5ec57589e3757772b1ec"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.5/zwrm-linux-amd64"
      sha256 "f6a21fe8c577680928b435e607e6eb4430205260f319af770ea6a292ea242f1d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
