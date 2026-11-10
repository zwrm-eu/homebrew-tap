class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.43/zwrm-darwin-arm64"
      sha256 "ec3a7a241a465b9c05a95b05324a157fefc44e1f113da6629c5434c09b6ca566"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.43/zwrm-darwin-amd64"
      sha256 "925b57eca1f9a3246802e191d39d130f367397ca2c05fdaf17ca35f6932dacac"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.43/zwrm-linux-arm64"
      sha256 "a3b1a3e4ed96df54d8bfdfb51fddeb2dd9b6ab34a97532a9a19ba6b598a40601"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.43/zwrm-linux-amd64"
      sha256 "3eda2e8e8b2d20a3837c6b8e7254c5a8c9f6a1241697bbf207aaeedcd7c87370"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
