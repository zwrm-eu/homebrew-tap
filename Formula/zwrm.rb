class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.7/zwrm-darwin-arm64"
      sha256 "6e400695c3830baf9bd1b2399b110e05bc85fa04c0c761503981aff4cf4a8043"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.7/zwrm-darwin-amd64"
      sha256 "a6cf7d5f2f068a35a3f4b5c1fcc4ca50a71c09999acb8c3c0dd7f4afc145350c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.7/zwrm-linux-arm64"
      sha256 "fc9404e3e98449acccd9f47ab12fbe75b6567136d4f992a1c269e8dc017293a1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.7/zwrm-linux-amd64"
      sha256 "ddb568accacb7c74a1480200e258ce7f5d7c6f30842cd51cc702d8a2dd5ddfe9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
