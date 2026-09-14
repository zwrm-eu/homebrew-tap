class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.1/zwrm-darwin-arm64"
      sha256 "361fbbcfc1ba74d9310fac88ee3adbd13d027ea5d8e9a088d10385ed6af15cb2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.1/zwrm-darwin-amd64"
      sha256 "fd73fb1ee5704d4d8e2d8bdaa89dad61ddfb8a14a630e5c1c4ee3efa8b8dd23f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.1/zwrm-linux-arm64"
      sha256 "8bb0d7c93286d8657b781b80fb3683c98e7e8733086e44d6b0542385b969a363"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.1/zwrm-linux-amd64"
      sha256 "d3aa7c70fba17fed41db31d843a6b4aedabc43669c2252c1734a516f31eda616"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
