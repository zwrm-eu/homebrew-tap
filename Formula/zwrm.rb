class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.20/zwrm-darwin-arm64"
      sha256 "53bfaa89ddcf032322c43fc779ed20d3940d3014f1dcd90aab38efdb18ec872c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.20/zwrm-darwin-amd64"
      sha256 "c6ab945f3d0242b8c2d04c02b8ebd9656f25bb60542298bb1f0248dc684d84ae"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.20/zwrm-linux-arm64"
      sha256 "6d36033487b93d1d01b3010bb43172c515ea971fd4fd53ca8c0066864462fae4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.20/zwrm-linux-amd64"
      sha256 "0ce38f7c4a32097900aea220a01406208a6ca2c18284830096359c7843faf3cf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
