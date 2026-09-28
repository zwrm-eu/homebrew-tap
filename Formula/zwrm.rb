class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.20/zwrm-darwin-arm64"
      sha256 "58fea92b6d83bace9c6fe4b1b583f0565f99dd8523accdb607b105e0d9bc56d5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.20/zwrm-darwin-amd64"
      sha256 "1a1c8cb27016f8b2d9bd65045d9f4568d0c9e07688260370a71e48aedc7940ff"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.20/zwrm-linux-arm64"
      sha256 "7667107a3e5962dcdbffc046653cdb72c3a77a9bcbcb46775d06be7df4e7ddcf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.20/zwrm-linux-amd64"
      sha256 "3cad2d644e885142a74ff9ec158b6e8619504e54cda1846d983bdd1c58d89ddd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
