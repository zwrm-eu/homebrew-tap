class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.12/zwrm-darwin-arm64"
      sha256 "dcce5e1b94b809035afe161124aa065a76a30aee718193a331c806c4905a6d6c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.12/zwrm-darwin-amd64"
      sha256 "abd79292ed4b6c568f40dca9fe785597becb4d5e641079668f60b04f5e277c80"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.12/zwrm-linux-arm64"
      sha256 "46fb87462bf59696e418ff66cd954c729c15f368d42a1858f0c1134a636d586f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.12/zwrm-linux-amd64"
      sha256 "80331fa3d2bd322f08e847b91afefa31c8ef7c3892633983b4010f018ef947bb"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
