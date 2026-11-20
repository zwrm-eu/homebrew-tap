class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.14/zwrm-darwin-arm64"
      sha256 "203c3ecd94f4bd18c17a5ddcaa201e63a9706ef7e58baa1d10756ab40da820ed"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.14/zwrm-darwin-amd64"
      sha256 "b9152085977f73f4dee3976a6805d75694ae8239ba382d161e53213518ccd136"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.14/zwrm-linux-arm64"
      sha256 "89b744236f9d31a3e8912bbd821b873aca7575209827c4ec1d59a19a292d21fd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.14/zwrm-linux-amd64"
      sha256 "4be45dc7db6bdfc9c76a97ef17dfd0233d716448f085758e720d461172366303"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
