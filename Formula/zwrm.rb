class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.44/zwrm-darwin-arm64"
      sha256 "d2e7a015a3f311f59a67e73f8310e3dd7de491f8a746371cd583da5b7c611a8a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.44/zwrm-darwin-amd64"
      sha256 "9c992cb9c34aaa2af22fec783fcb423e4bef9751dc1166889d98cad3715477cd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.44/zwrm-linux-arm64"
      sha256 "b8f1ce6bc3dee97c795810e2e29f9443b33a5720e083b87064edf52f9e22f01e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.44/zwrm-linux-amd64"
      sha256 "73d9e9d260a464ae38dcd75adf3cab21a4744f4c6033f68b7b7a5acf811807dc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
