class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.1/zwrm-darwin-arm64"
      sha256 "4e3c0c5c107b41e54335b2a6d8bbe9989ba3d1e27509cebeb4e58032a27b50af"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.1/zwrm-darwin-amd64"
      sha256 "b6348e90335904f839efa49fa26a9adb0dda43bd2a77814ed79fd475a660a0d2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.1/zwrm-linux-arm64"
      sha256 "0f34a2020a0f2943871d51f7890a0a8d004014e61e81375cec3207bda57970f6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.1/zwrm-linux-amd64"
      sha256 "f00e685c561b3e8dc4a410f8e4b1786db9e33566d3900aac7860752170abfd79"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
