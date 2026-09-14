class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.3/zwrm-darwin-arm64"
      sha256 "d6517e45ff2c52c9d914fde72fb3a959425ad263bf19f32c0084f14f4d2cc338"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.3/zwrm-darwin-amd64"
      sha256 "a03b010f96bf6dcfb9f0a5d3efae24cb09cde52a9b0004159e726965f11c4e30"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.3/zwrm-linux-arm64"
      sha256 "cac411a0893e40f5ab330ad4dcfd6996a7fb0778fa9c188256a98a0198fa34cc"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.3/zwrm-linux-amd64"
      sha256 "fe1db3e5a46d1c655807d817a431268161698e127f009c9dfbfe925485a17042"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
