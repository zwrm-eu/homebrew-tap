class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.8/zwrm-darwin-arm64"
      sha256 "ad65d658c4a487b46db93fca29c6ad183ede848e0c698f77cb48f83c67b16722"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.8/zwrm-darwin-amd64"
      sha256 "559979ae73c29601a060fed7a39ee2d50023fbaf93fc4f89705602b7ae29f651"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.8/zwrm-linux-arm64"
      sha256 "1605a52b05ea38ecda3f082d8638f243e176618181d49334746d5bc192291330"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.8/zwrm-linux-amd64"
      sha256 "18188f2d7f0451117d68776275654fd5448509b2d1110895d319fc2012b74247"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
