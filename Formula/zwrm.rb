class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-darwin-arm64"
      sha256 "8ec7ed2e8e76ef1ba07e2032916dbc1ba97c3756c4e30ae772de8e22d026e8d3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-darwin-amd64"
      sha256 "994cec66f0968fe3700149ab46890298dd87a1c58c2d4b19886604ddd1236d11"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-linux-arm64"
      sha256 "df9508531e3fcddeaf3535ad30d514be350d863bf787b4f1796199edb1779aca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-linux-amd64"
      sha256 "020bb46c92b35e6cfc7e84cf4e568419970161bf533376fe8d1faf5c76dee4df"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
