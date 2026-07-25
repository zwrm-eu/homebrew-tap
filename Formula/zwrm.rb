class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.16.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.3/zwrm-darwin-arm64"
      sha256 "e24b0390ea2e6a635675d9cff0bfe09c2e32ea764c74459ba24afaefc100b47a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.3/zwrm-darwin-amd64"
      sha256 "31331de6b9dca3afe12cc5bf5af0053ee98490d3f512ebf0ecdcfedbf17970b6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.3/zwrm-linux-arm64"
      sha256 "9393eca78b76a0b240bd0a481d422b3500fed0b49b016866fa576ed15d9e7dc4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.3/zwrm-linux-amd64"
      sha256 "48b5e25b073a90018199e84056d45b8e8ff1ab97f9687eda1a401041f1296fac"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
