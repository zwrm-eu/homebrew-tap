class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.0/zwrm-darwin-arm64"
      sha256 "8db968992e697bcce58ea7a69aaffbe361d2248af5e6cba49e19c165335cfad9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.0/zwrm-darwin-amd64"
      sha256 "daf429b5ba8b14ede893e798b1d8ff04415826d40e143e7b23e0826ca00911e8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.6.0/zwrm-linux-arm64"
      sha256 "7d359783bb811c3dcf8d8275703761da6c801dc17fcc7582923e1dbfed15f8ac"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.6.0/zwrm-linux-amd64"
      sha256 "90208780eca7d9345d7ada493927562acb9d9e20da99a0e2ef33321b94d5823a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
