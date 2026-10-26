class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.24/zwrm-darwin-arm64"
      sha256 "3199aa97dad5fc7a6155d12892917a11c2e484ccf63c729c64c772a1c0f36124"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.24/zwrm-darwin-amd64"
      sha256 "cd66371c6592f12d7acd6481a52fd7cfcd5a78b804d0a7e727b4cf8245221d22"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.24/zwrm-linux-arm64"
      sha256 "f6bf060289129003997d0b04c372e29deeb4c9afbf74d094cfbc4a47610d2cd7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.24/zwrm-linux-amd64"
      sha256 "a0e48337261a2035510a3d7984467aabbdd96e471f203143adb6bc477d7e3758"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
