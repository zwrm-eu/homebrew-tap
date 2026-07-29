class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.4/zwrm-darwin-arm64"
      sha256 "e364466f47f49e65c04092389add3bb6f06b18e619ae2b0b9fcff157f356fcc4"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.4/zwrm-darwin-amd64"
      sha256 "1cd117c86f2314412843bc298680cfe186fd7dc48958fd9625ae85cc3c942db8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.4/zwrm-linux-arm64"
      sha256 "2833b2c5677ed8e01455a7fb2c9c8cdb4e602d0ca00e8967374b52cf9b14b59c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.4/zwrm-linux-amd64"
      sha256 "4dd18d851ece568f64e908aa6ee785224d1f20f69e6fe9ba7cd14f42769f8734"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
