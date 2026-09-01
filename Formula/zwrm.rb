class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.24/zwrm-darwin-arm64"
      sha256 "394e7c3ac3943b8a6b1d3e6cd452ca40d34a941ee05eb9bacc8856ab79c8267e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.24/zwrm-darwin-amd64"
      sha256 "a3eb6ccfc149d21eb99f27fa1003fa6b035398b9101759c70ff4d373223468f0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.24/zwrm-linux-arm64"
      sha256 "8e9373c10093ea6689ce24c09e2feafc70d9422faf1b4a58e61548dbf01ad4e1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.24/zwrm-linux-amd64"
      sha256 "3945f85e3d52f12951a334b57d28c22dc0c9a2b1eb64b8ca9ac7e7baecb20f17"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
