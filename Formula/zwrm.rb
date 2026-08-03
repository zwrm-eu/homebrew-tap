class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.0/zwrm-darwin-arm64"
      sha256 "96dd13f4afbcd811ecb73187f1b6e07e119a4b7bb80b1fa5d5465f1f0b1331f8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.0/zwrm-darwin-amd64"
      sha256 "c1f0d124a565dc59be308c727f890c6ad16ea296874a3910ded4a8227a2003d0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.0/zwrm-linux-arm64"
      sha256 "77055403165e9f3e4edbcb56615f74daad8d330fe6ae37839a95e81028944a39"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.0/zwrm-linux-amd64"
      sha256 "4d30f713c1ded172740f4921e79a72824e58c063cbcbfdcf3f194b9a5ed8eb40"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
