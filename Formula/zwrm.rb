class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.4/zwrm-darwin-arm64"
      sha256 "9e1eb510bee08fd4044285f3dd3a694df24bef269c42feee9ae5e7a5fa994185"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.4/zwrm-darwin-amd64"
      sha256 "f3c85a74206b2303692ede3f9c1ca31b570b812dc728657d64b8bed733f3918b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.4/zwrm-linux-arm64"
      sha256 "75c96edb631329b673bbb82d97fb3616b02f17fdac1f7b07077bc2dab6922913"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.4/zwrm-linux-amd64"
      sha256 "14ff8157fdeb078c38bb13ac62333def046348e7537f4a880be183c7b5e70603"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
