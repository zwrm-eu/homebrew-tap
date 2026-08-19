class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.7/zwrm-darwin-arm64"
      sha256 "dab1d52ec4b7b82b698fe0205173f32c03a85c6bf83db006152c45c86ca13d31"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.7/zwrm-darwin-amd64"
      sha256 "aa2da4eb3adaaa95e64c9f5b4398d4076cf600fcad30194bc63f8afb03cad40c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.7/zwrm-linux-arm64"
      sha256 "b40910369964e5273175f4c85c0c2d1e15d670ba2be8c6a055e05292b944459a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.7/zwrm-linux-amd64"
      sha256 "e4249ea35e246ead2e9efaab9e68d513eed4cecd2bcc48c8aa103aab52e129cd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
