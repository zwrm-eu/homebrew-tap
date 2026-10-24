class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.14/zwrm-darwin-arm64"
      sha256 "14203872cd33a9aef034771ae3e179acff06e8fb15cc2b7e6614bc1159d59243"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.14/zwrm-darwin-amd64"
      sha256 "cbf455dc94d8db6d61ab21dbf015bdd28f2fe9adf9ce68211a112c14bca94a3e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.14/zwrm-linux-arm64"
      sha256 "d1cae7899716586b056da30accee97a73ce1da858676aa190150935c84a88181"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.14/zwrm-linux-amd64"
      sha256 "14fda6cf297ebf1650ecd98a68a9e1ebc13322556c5a7ba9707013e6cf06cc70"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
