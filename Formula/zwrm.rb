class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.2/zwrm-darwin-arm64"
      sha256 "ea6aaf0c1f09100469bee5c6ea07790f8cf8a1e31a3ca59a83f7028f062abbeb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.2/zwrm-darwin-amd64"
      sha256 "57f7f3660354e041ca1aeda7d3a2bc816e1ee0e7eba4b95085943003166a23d5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.2/zwrm-linux-arm64"
      sha256 "3fcd497c54f5ec145d4e072073e34a1c360db814d9ed8f25968b7e8230e4214a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.2/zwrm-linux-amd64"
      sha256 "d7ef69e91dd8bc70165e28898081c64bf1c0893faffe86601b09d868090d9e0c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
