class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.27/zwrm-darwin-arm64"
      sha256 "1df4f2db1d9786514ad8a48efffe0a52de130a1ecda0de1c0017aae0d6b8b9e6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.27/zwrm-darwin-amd64"
      sha256 "d0018cdaf9e83da039ff0a47fb08cfaab397cd8f84f330092750acdf2cf02cef"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.27/zwrm-linux-arm64"
      sha256 "3245d72efcb1afac741d2d940990303d28459f10541d70c295852be9321cc4cf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.27/zwrm-linux-amd64"
      sha256 "451fb2fd275e543640e07927a5299ebd88d6ce9dad0d24a32dc8e1724f568575"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
