class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.3/zwrm-darwin-arm64"
      sha256 "5ef6be2fa399901c79aa6eec65ab9bcd0d538e1ada8d48db5b949ddc843eba12"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.3/zwrm-darwin-amd64"
      sha256 "54ebb7f40c6d353f84ad34aedaa0869b045c15a80ebc44fad91498ac47ebf8f2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.3/zwrm-linux-arm64"
      sha256 "33874826bf0f6a2520983838cb7305a0132e958cbfd3c398b86d8eb6ff571571"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.3/zwrm-linux-amd64"
      sha256 "33d53a65042cbbc76e518a66bb6587a09689de6aed8273a378823ef8e7ec3ab4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
