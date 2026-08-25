class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.3/zwrm-darwin-arm64"
      sha256 "367ae3ce2a9942389505561470153dd75a2ac12474d1cd9b79b4266385913910"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.3/zwrm-darwin-amd64"
      sha256 "857f3da75025128ddf0f8756f2f604e0c74d78246aec7bd64e48b6c246721606"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.3/zwrm-linux-arm64"
      sha256 "6c4b0def424717455a6f3e39f3dbef417a90b60cc196693a9571a017d65e6a18"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.3/zwrm-linux-amd64"
      sha256 "0d1f4a678236a9413fe6a24bcebe65d1911cf88c4eb2fa7a36546543b1a509e7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
