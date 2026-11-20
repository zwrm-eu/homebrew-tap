class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.12/zwrm-darwin-arm64"
      sha256 "d48dde278108ba10ad317978c57de0393812eb8d838e86c3864a805d200dfc96"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.12/zwrm-darwin-amd64"
      sha256 "1421d3ba92c56ba800b69fb7d9aed4f745fd8c1c0cc9331269c44ebd6b6604b9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.12/zwrm-linux-arm64"
      sha256 "a212c5537f810b2c2fda4db81c185f71aa7b54a780a16b89aedd539a636c21a6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.12/zwrm-linux-amd64"
      sha256 "c416438700e78a5e5ce06fb54543075e09cb17cc60ccda20797dd13596c33d60"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
