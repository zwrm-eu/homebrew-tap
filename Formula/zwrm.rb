class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.13/zwrm-darwin-arm64"
      sha256 "53f3f710b5ee26132fb4071dbf7ba1c8dcfada98de9ef143e3d7af603fdf8481"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.13/zwrm-darwin-amd64"
      sha256 "ca4de2b2b6a843357f8836de9310e4723867a1728bd207dd351ef7671f8722e4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.13/zwrm-linux-arm64"
      sha256 "2eef87c698f4b3274b4cb8d5bf9f0c43dfe7099058fe66946d13a840cdfe310b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.13/zwrm-linux-amd64"
      sha256 "b8f99e13359cda7a7bc665ea810422fc48cab1a639f06131e83766c87d64d5f7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
