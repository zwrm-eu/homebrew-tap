class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.2/zwrm-darwin-arm64"
      sha256 "951e1ae74dec0323a9619c29af899837f54efa3a9ebd4920ab03a01153334691"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.2/zwrm-darwin-amd64"
      sha256 "829d01487107ceb446481a8f9f06f61cb8eb84e12640569ee17524d2fd8de651"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.13.2/zwrm-linux-arm64"
      sha256 "0b77b20ef17ce6ae841c22e263bc719376060f898ca6091d982f41dc3393468c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.13.2/zwrm-linux-amd64"
      sha256 "e73003e548084291b88b3f1bcaf13b773d6f1f3fa697ef75a05456f19bd54aaa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
