class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.5/zwrm-darwin-arm64"
      sha256 "9feed904d19694191bbc6291a4e48cde05c25b6d9ee006c8d3e026ad4ed0fdb5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.5/zwrm-darwin-amd64"
      sha256 "f8ed426ba97e357530376cfe10909c88a6cbfe7185d36265775bdaddbb0f2da1"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.5/zwrm-linux-arm64"
      sha256 "fc1e5bdd4eca17cb9d41bf96b5ccbb80e3cc2ee8376a4c76007a1570aa3ddd5f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.5/zwrm-linux-amd64"
      sha256 "12e71d586d895ea8f67d1f80b9dbb2f35969a2f3eb806921c0320edabf0c128a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
