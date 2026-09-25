class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.14/zwrm-darwin-arm64"
      sha256 "13e3027f68ecd871d9825dd763af7d9b1e0580720546ceb7c19e5e5f43e87830"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.14/zwrm-darwin-amd64"
      sha256 "5464a44c65c244eff1028b55540d9592b6c1c731ddd6208f1a821c62e832c7fc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.14/zwrm-linux-arm64"
      sha256 "c4583c187bef3e4562a3a51135952c4cc61feb7808e57b6fad18ecf7d8f66d88"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.14/zwrm-linux-amd64"
      sha256 "ceadae1abf9063f785b2d42318a9d5b4a78adbbbed664ccca3fc94784cf5059c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
