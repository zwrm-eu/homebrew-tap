class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.21.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.4/zwrm-darwin-arm64"
      sha256 "fc935f350f8d5721afe69e13cc042f90ab28b687e8c8d5c21c5a0496cc0a3228"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.4/zwrm-darwin-amd64"
      sha256 "5ecc921f6efdf2c41083838bc8df788404df5934c8f88752708c79381e142bbf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.21.4/zwrm-linux-arm64"
      sha256 "b25181cdf6d35b64ea4eee2e1d1677d279f113e4132157edc81f3d87c3611eb4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.21.4/zwrm-linux-amd64"
      sha256 "b34d649220b2531abbf9910195445dd3590484b43e204b3d348a25ad1cfd0e6f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
