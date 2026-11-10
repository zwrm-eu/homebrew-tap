class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.40/zwrm-darwin-arm64"
      sha256 "795a87c6f9e726cab4bbcd324d1dc708b9550547d511d8760e1375c820d2c2ec"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.40/zwrm-darwin-amd64"
      sha256 "fc3da0556d3fe20af940fac2a0758aa94ab040ee5d37865cd01f6b4375f5f14e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.40/zwrm-linux-arm64"
      sha256 "ec55215f1cc5fc4d7c215f3e4cfa899798bdfe03869e624bb1909ceb36cef87e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.40/zwrm-linux-amd64"
      sha256 "0acf52707eebf1ceb3328e35567f0f177aadc03dd9b92d778292bf55827b239f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
