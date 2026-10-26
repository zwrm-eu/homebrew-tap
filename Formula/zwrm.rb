class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.21/zwrm-darwin-arm64"
      sha256 "fa8c253b2d8cb8bd14d56b6e45485681c0d268201ddb89b23dfebe5c53fa2e1a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.21/zwrm-darwin-amd64"
      sha256 "62d7b1ec8f03c775e51bb6b3950dc82e65387151c76c2a26ff4066975d21bf7d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.21/zwrm-linux-arm64"
      sha256 "859423ae7eb7ce7754fd31088afd82b636a7c9e181034c2580f5d60854dc7fdd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.21/zwrm-linux-amd64"
      sha256 "bbb559ff61d896e5db76bd71dc075fb6c4858ad8b500f932d4467dda795abb2c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
