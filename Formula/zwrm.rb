class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.17/zwrm-darwin-arm64"
      sha256 "e9f155e1f5f276d706549523b8b005ee7decf34aa19cf34f6fe9d8a05e4bc695"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.17/zwrm-darwin-amd64"
      sha256 "85c73b2bbf713c7ace0015270e7366430705bde32329e0cfdf08e5706ae59f0e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.17/zwrm-linux-arm64"
      sha256 "6b4d30cde8dc4ed6d500e436387fc5bd1b761ac813a5a87d0b23741e96c51462"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.17/zwrm-linux-amd64"
      sha256 "9606c538bbc7819d9222ca59f28fb716d7670fe322eabee35a94ac524796bef4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
