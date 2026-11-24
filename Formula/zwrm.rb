class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.23/zwrm-darwin-arm64"
      sha256 "570e1c5b79f7995cc06b7a6453e745669a4d8d2bf0eb7f7770085110a80d17eb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.23/zwrm-darwin-amd64"
      sha256 "953216c96e39d884fbbbcba5e0b3597486c7a4a6be393a107bd5dc267f1329af"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.23/zwrm-linux-arm64"
      sha256 "7d878c44eb18692e0367074bebfd85202f8c747b221054fa91b71e03d6e1d861"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.23/zwrm-linux-amd64"
      sha256 "989badb3813171250b8c399ff673831c0c3b8e1e2c08a9a06a7406687ec3ba11"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
