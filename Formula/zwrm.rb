class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.30.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.2/zwrm-darwin-arm64"
      sha256 "3fcaaa11f996d6c0f9fab2d8f5508a1f65fc83ff0236e753d4c185f3e1b62dd6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.2/zwrm-darwin-amd64"
      sha256 "85cfe78390fb7708a60382bd096076a3ad3ae859592e1df305867511b8caf909"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.30.2/zwrm-linux-arm64"
      sha256 "9320867fea34665a8671f22b607069b2b0300cbc74a1e42a42603466df4ee2d4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.30.2/zwrm-linux-amd64"
      sha256 "2b10d9a5c0355152c2fd8d259dd9a61c1002d337de54836459284746c3a738d4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
