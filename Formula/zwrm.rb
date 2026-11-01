class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.1/zwrm-darwin-arm64"
      sha256 "108cb695022557c79f62262d0863432d36ea9fc9815d7b403b4481ba65e9b89d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.1/zwrm-darwin-amd64"
      sha256 "5798903c3a0a0a1b187df825752afdc82e1a65a69c48d6471fd124952d555111"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.1/zwrm-linux-arm64"
      sha256 "026c6006c1830b6cf9f10c198f1fae55ad0963c340002d0762e889b15f56dda3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.1/zwrm-linux-amd64"
      sha256 "6660806a0681ef31178008edec43eaee81817ee51422554f875c5ccfd7cb9506"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
