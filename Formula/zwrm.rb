class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.0/zwrm-darwin-arm64"
      sha256 "1b2fdf4f46294f2b61b3b2a4ee4e205048fe6605ec607bf009a69bd6ddcc18d0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.0/zwrm-darwin-amd64"
      sha256 "07cd9ff20aacd53ba655c0ba533df549fa1cc58a729738c955402343f1b19a61"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.0/zwrm-linux-arm64"
      sha256 "3e5864aeae556df961ce2b806764c74d1e31a38549a0ecf863635369eeaa862b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.0/zwrm-linux-amd64"
      sha256 "352eb57b9a307205c1bdbbb61fc0ffa87ec6a705aa6872bc57507f43c921518e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
