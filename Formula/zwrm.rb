class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.20.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.5/zwrm-darwin-arm64"
      sha256 "0bff1d3569e8bea916246ffe7e5908ed37a1138a1354a915987b170041849d7d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.5/zwrm-darwin-amd64"
      sha256 "94b0adfaaab199dbfd5be6113ec4bcf3a3105d3bc9f9196e5cc8bcc15e81697c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.20.5/zwrm-linux-arm64"
      sha256 "b95814b6eb25cc6f35734d59dacacff668ec0abd776e67451984f2690284a56a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.20.5/zwrm-linux-amd64"
      sha256 "1e01c0cbb70ba5e3a13b332fe074e407f0a7e8d21fec7cf7813fbbf48a6fac88"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
