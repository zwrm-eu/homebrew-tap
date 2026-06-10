class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.8/zwrm-darwin-arm64"
      sha256 "0c493daf0c89d27b5298a1f83a50965779e93ab752a36b235063bd9d8f1080d6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.8/zwrm-darwin-amd64"
      sha256 "f09380a08dd64ac227357e7ee4acb8d7f4959d8dfa7ec7d562bd7bb9985c71d9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.8/zwrm-linux-arm64"
      sha256 "f310e313e8939e0296b4958664972da119bb54c7ec6c4faf431bc3f3e059ff91"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.8/zwrm-linux-amd64"
      sha256 "5cacf455bd118cf2cc6e6df82ccec769bd0308d70a1644e2fad8aa9a709f28b3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
