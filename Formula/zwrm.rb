class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.10/zwrm-darwin-arm64"
      sha256 "a38aefcadeb457e1c675194ce3e918be12a3c03d70ac652e3a7e9f8510910559"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.10/zwrm-darwin-amd64"
      sha256 "524f22bd83bcd90034cf86e17614cd54006b38286e974dd3621907325e6d9187"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.10/zwrm-linux-arm64"
      sha256 "0756b33bb5a9794bd552d9fb78b22641e661866acddeb04c07e38ede66d913e9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.10/zwrm-linux-amd64"
      sha256 "89e52b432eb31a6668480f2fda0101a7e55eac56512f35c0cbbb35ef9dfc0592"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
