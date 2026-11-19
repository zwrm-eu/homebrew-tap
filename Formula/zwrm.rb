class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.4/zwrm-darwin-arm64"
      sha256 "3e2d8f566521c9b0235f8c3c62da93dab231a00fa229312d2059e76cb328fbe1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.4/zwrm-darwin-amd64"
      sha256 "fa18dfa3d9dd89e4f9dbefe08b35a4c8b7f906aaa458f1c89262590ad827f976"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.4/zwrm-linux-arm64"
      sha256 "5578c9e28424d856f902d01e5037bd075ec938d0f69935331c0d139733a4384a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.4/zwrm-linux-amd64"
      sha256 "6d04fb292590f99b5b03e3c0b9faf4c737ea505b0858dfa0ccf8090479309b43"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
