class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.1/zwrm-darwin-arm64"
      sha256 "5c934ef665c178012c2baee9cd4b208bcedef77e6f473c61d27a51b003e02222"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.1/zwrm-darwin-amd64"
      sha256 "4e68d4d67e20a3e4aed3548530e1f12c46103e6afabd2431ef8a337206aa3403"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.9.1/zwrm-linux-arm64"
      sha256 "1df3c0e9130ce9ef2d873f7acde2fe905b858507e9326c2cc1b51caffd70fdf9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.9.1/zwrm-linux-amd64"
      sha256 "24ede3009102db027482c864760fa5fa21032af3294f787aeac377b512576e08"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
