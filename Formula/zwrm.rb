class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.22/zwrm-darwin-arm64"
      sha256 "46d7905a805d2453ffe618e7770e6e930ff5607e1190dc6f0f2a469154e09811"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.22/zwrm-darwin-amd64"
      sha256 "2162e78634d3e5abfebf1afb58bf40af893d26dcdc3e3728005f6a11c1d4ffd3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.22/zwrm-linux-arm64"
      sha256 "82b07e91ff525dcabc839c2858a80492b088a9bc5e21bbdc207cf67fea6ba972"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.22/zwrm-linux-amd64"
      sha256 "940a359368aa76b0bcfe79e40c9740fc1694876e562d6c1462f9ab37460a211c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
