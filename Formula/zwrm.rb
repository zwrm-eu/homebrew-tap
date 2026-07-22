class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.57/zwrm-darwin-arm64"
      sha256 "e66973981834743d6009405fcf4e180657da16912dd1eb6997abb92eb894293e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.57/zwrm-darwin-amd64"
      sha256 "a5a9f40b05b23c3cfcbc02d4c3ed566fd2f19b1fa29d55e5e58e99400786e0e9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.57/zwrm-linux-arm64"
      sha256 "38828242a92664ea1cb0ad3a4bb9c96b84e8e14f676d8b82b036093c2a0d9b07"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.57/zwrm-linux-amd64"
      sha256 "c7c7efb98339318af05f017fc8b2f8dc2d215a7fd7118b9a84739255205f2d7e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
