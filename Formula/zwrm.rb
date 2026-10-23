class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.13/zwrm-darwin-arm64"
      sha256 "4da38fbbf6b00c2444d4e2d580e903e2025d4255fa97d86b6a335c00c88b4e30"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.13/zwrm-darwin-amd64"
      sha256 "0774d75d5e36e24a87c02ce1a6976ac2f4fd6a9cf03b55ac0c82d27cf533ad8f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.13/zwrm-linux-arm64"
      sha256 "978ec84d8dc48562f523ce4ff53cda391d781feb27712967c41180119d7eb8a4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.13/zwrm-linux-amd64"
      sha256 "60c4b38a8f5cb252a37cd935c9454fe2fcd0ffbad67cc7fa2e79b3adc87f64bc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
