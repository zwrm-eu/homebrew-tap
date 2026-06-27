class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.12.0/zwrm-darwin-arm64"
      sha256 "12eca7718615d4029ff151ee69da121ac5ada13bca887f6886b0bc242665e135"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.12.0/zwrm-darwin-amd64"
      sha256 "e9a62dcf2019daa572c457a9382a663e59ab85eb8da83a50b106c3c0c537318e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.12.0/zwrm-linux-arm64"
      sha256 "7846f870b35c21d7666dd8ff176fffb93c16e4fc001ea93c4074146d8675b6c0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.12.0/zwrm-linux-amd64"
      sha256 "50981e34171ab9a288042a5e1cc9130b8e0d66f5b726efc63a830e86decaffa7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
