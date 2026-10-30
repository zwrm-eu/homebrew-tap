class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.37.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.3/zwrm-darwin-arm64"
      sha256 "7e928eea1c21ca663c7bf0d3862724b1f7412afae7fd4750a347352b757f0686"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.3/zwrm-darwin-amd64"
      sha256 "6a4485dfe3b614c27ab0a765cdb07ef230e403cbf5275f82a25e2ebffe4ab207"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.3/zwrm-linux-arm64"
      sha256 "caf5fa3cb9de5d666174ad2bb1fae7737a3ee1874e59261efdd688bfda872d85"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.3/zwrm-linux-amd64"
      sha256 "a18a72b4fdedbd5b70843878625b20a8c6ae8da9ca0c5c2ec75f113df96118a4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
