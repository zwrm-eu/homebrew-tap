class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.8/zwrm-darwin-arm64"
      sha256 "1405ffd0027ac394c8b30704cb87bfdcbbd3bc95126c6330255d9127fb37373a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.8/zwrm-darwin-amd64"
      sha256 "bb77dcfda1734771e6323dcce6e3f26355b1df4ae402c1d96be6f3f0b7666f52"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.8/zwrm-linux-arm64"
      sha256 "b89f14781ca07ab14b8e2aa661ce6999aec4411cf339dfb1f330aed26aee8dde"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.8/zwrm-linux-amd64"
      sha256 "dcc3491aa5b19cbd4b8b6e71eff0aab3d163ec4b0d66b76d88df05fac7236337"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
