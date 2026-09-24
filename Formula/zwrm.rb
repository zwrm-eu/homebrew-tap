class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.11/zwrm-darwin-arm64"
      sha256 "4fb7c2ca2a03498c267d216ea44e26ae4834cc8cf161a4d36891a9884bc9c7b6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.11/zwrm-darwin-amd64"
      sha256 "573ba25a1013edb6ecece28604cc45f3269e202a1206d85a12d5722dac62886b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.11/zwrm-linux-arm64"
      sha256 "3fefe18517fcf7cad8203865b16933828ae9bd8e7a22e6f7828877da22f46cb2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.11/zwrm-linux-amd64"
      sha256 "cad2156a96744d1bbe633939c4cbab840af600460de6458f8bc6711211ae522d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
