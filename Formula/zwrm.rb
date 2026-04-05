class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.1/zwrm-darwin-arm64"
      sha256 "3987775270cc93b05ff5769cc33cf6e208196660f5b1a448e9f660048a3f7c2e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.1/zwrm-darwin-amd64"
      sha256 "980b89e02a4a784b00c872c9336a90cb4d47e9f3f9739461941afa001322548b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.1/zwrm-linux-arm64"
      sha256 "5bfdc67525bb6111e520300d48c6ab887543da368df448c0a33c7122ed46bd08"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.1/zwrm-linux-amd64"
      sha256 "43c82e4edd6b7bf81f65d1554ae466489ff3605c20a06f52db17f7a2452f43f7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
