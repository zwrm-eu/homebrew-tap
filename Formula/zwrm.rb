class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.6/zwrm-darwin-arm64"
      sha256 "8f2518e2645b5ae499a94387ad0f0af6f772cc392640563c3fd6aa5e50a6c877"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.6/zwrm-darwin-amd64"
      sha256 "2040b22adfe75a7a85751bfbad6eaca389b251f7687e9da193cdb3ec028f1df7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.6/zwrm-linux-arm64"
      sha256 "f952bfd9d4dc45750cfbc0fba9233078a43c57b289fe853c55879efff39626b7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.6/zwrm-linux-amd64"
      sha256 "a9a323b3d6b5b9ac8cef69f015ef4e410aa95e2b691566144d481b7bc701b936"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
