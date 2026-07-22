class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.56/zwrm-darwin-arm64"
      sha256 "f3d542688ac4effd4aa231292794a1e1ec4cb3b923846e4bf745e34efe2a4a69"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.56/zwrm-darwin-amd64"
      sha256 "c72d583187164e7c148b6dc5679e9a3938001249e36d59bbbf6c18009156274a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.56/zwrm-linux-arm64"
      sha256 "4b19b329df324818c5363e5228edcb8caae639ac61fdaf02f4014dc01d6732c1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.56/zwrm-linux-amd64"
      sha256 "40a052ca892a712ed2288a71aeb0376afae2189a6f03fd6a8b9cd50e8e6cc2c6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
