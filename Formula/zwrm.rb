class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.9/zwrm-darwin-arm64"
      sha256 "4fb794c4e0a4850cefdd83c517a9f860ca994a04bc546317eb8fe0689fc9bf42"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.9/zwrm-darwin-amd64"
      sha256 "23b62da2e065597c841974f1c2d0fa93145366eb9bec910e746143ad3222adb6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.9/zwrm-linux-arm64"
      sha256 "4f8c2c0a7d272446db5fadb6b873f02adb13466a8ef637871495ace75e039065"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.9/zwrm-linux-amd64"
      sha256 "0c61dc0c04008b93e49400cf8961e0a31783840f1ede88695273ab54888607ee"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
