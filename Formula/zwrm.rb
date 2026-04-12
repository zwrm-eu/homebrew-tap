class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.9/zwrm-darwin-arm64"
      sha256 "8ac5125ca720ffd2f92b9a229edd5e6524b12fb27be0cd82c33677bbd9c47d46"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.9/zwrm-darwin-amd64"
      sha256 "2d302639a9ed40d835fa29b72a51db50274dbc997e478d16d6d26ca2f8fa25eb"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.9/zwrm-linux-arm64"
      sha256 "54f9911200ce189d859b617640ebbb6547435922b4e0780e7b070b66575ca664"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.9/zwrm-linux-amd64"
      sha256 "a009fe738898b3a95b56eba7a9393049a63708bf062ac6d9b5ab335b7d6d550f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
