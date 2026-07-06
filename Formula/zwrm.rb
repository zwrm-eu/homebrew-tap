class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.12/zwrm-darwin-arm64"
      sha256 "bb996de1ff88de6afcb07513c9e07a679bdd5e78fbf472e54eaefcf46b21d156"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.12/zwrm-darwin-amd64"
      sha256 "429332cfa2141093fbf019728de4337eaa0df60fafe628cb6767ae734b074d6f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.12/zwrm-linux-arm64"
      sha256 "6d4f5c390b17e98ab0b6b9f8074f44397e5ec5673f2aa38bc0c35850a5f80c46"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.12/zwrm-linux-amd64"
      sha256 "887c1b4ede50c527c72e71e116c305c419c690118aaa489f028e799b5fb28276"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
