class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.2/zwrm-darwin-arm64"
      sha256 "9fb818c89091924cb8f5c369a47ce11006729aedd8f75e54795a36f01a7731ab"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.2/zwrm-darwin-amd64"
      sha256 "c4f64c332d08fcb18bd85e04f5a1609a9aa12ea83ca72b185e5dfe61df93636c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.2/zwrm-linux-arm64"
      sha256 "965f5d7d6712fbb8dd56bd3031e0552cb0d80299145a0236eee0571ac0214bd6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.2/zwrm-linux-amd64"
      sha256 "781b1373beea060748fc5e0007e9a5c0397fdbe73b967370ccce39924a0d0aef"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
