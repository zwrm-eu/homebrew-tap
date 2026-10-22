class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.7/zwrm-darwin-arm64"
      sha256 "caf0206194da448b85b10492b54e17d37b75fd9f81b173d4373743bf72070dd5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.7/zwrm-darwin-amd64"
      sha256 "b34db3d2d39d2a5fcb3cd0cd1dd5e7e275fb800d6b63825242e58b9c9ca10128"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.7/zwrm-linux-arm64"
      sha256 "4b23acd7ed1c63a321628d7059419ad38f46fa6c10ae4a4c8ca43f5dd32d42e2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.7/zwrm-linux-amd64"
      sha256 "3d2f36a40bdc0aa38c13ff30f8a8b7226748b793dc463fdf0d95e8499e361c31"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
