class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.0/zwrm-darwin-arm64"
      sha256 "35bf134d745525b41bea4b30b698b14889b29ad902aa04491bbcea12731fd7b3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.0/zwrm-darwin-amd64"
      sha256 "a80dfa22f8925317f1ab127c9a9e4e4bfbf69a8d75bcf27c940c91374ae99033"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.0/zwrm-linux-arm64"
      sha256 "0c29a725a262aa50c9bb7cadc5fc3edfb10200778836d8853491b96c3d8c32ba"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.0/zwrm-linux-amd64"
      sha256 "588ed49471653da0d28d976bbc2568519e2d5c95ebe9a3664419d96ec456da7d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
