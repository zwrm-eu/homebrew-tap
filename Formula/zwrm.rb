class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.2/zwrm-darwin-arm64"
      sha256 "22f3ac8507c430a2c8a39a369f922bea555e74a18d2d012cc9e4abb74d05bf1f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.2/zwrm-darwin-amd64"
      sha256 "e1920165f14a1731dad603cf475f096b2e17b6012abc769bed662b92a0709374"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.2/zwrm-linux-arm64"
      sha256 "6d1365abf72a913f71af47b4a4c364cd4ebb12d0ffca38ece5fa39daee27079a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.2/zwrm-linux-amd64"
      sha256 "4085582fdb48263098920c200c8a759753d30b570130f64c34264f5bc28e074c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
