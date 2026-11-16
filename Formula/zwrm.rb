class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.1/zwrm-darwin-arm64"
      sha256 "13df867d8ab6147fe769dfe75a30102a222c882e9b92dbd5ee97005b2d015cc4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.1/zwrm-darwin-amd64"
      sha256 "49a4d89bcb79e0554571fefe23fd6a8dd8e02d712fb3662c7f08e5af1fbe2e7e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.1/zwrm-linux-arm64"
      sha256 "14edaf54bf3c486eef1ad6898b69790951ec33ca2db6c288b610d76d03b7dc61"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.1/zwrm-linux-amd64"
      sha256 "d3aa8746a4b93807728035df7b2f290410c63f76581c6eb7791c13576e1c118a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
