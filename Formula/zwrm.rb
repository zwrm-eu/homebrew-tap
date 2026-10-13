class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.33.0/zwrm-darwin-arm64"
      sha256 "e8c4041ed124ed420326506cc4325411882aac9805cbaf25fd46b5b74ef3835b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.33.0/zwrm-darwin-amd64"
      sha256 "0d08274f9b986ee24edb2a5ba37e47e288a6ad08cfcd8cf97bfe7851e7e9fc93"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.33.0/zwrm-linux-arm64"
      sha256 "0bb34ce681c3d6c4a6ce6ac1ffe9c4aa1f04c830269656375e2f7270831a87ee"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.33.0/zwrm-linux-amd64"
      sha256 "2e18fa3b3e41733b217a241723ad3abb82688a62894c8a2a596f6a683539f4f8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
