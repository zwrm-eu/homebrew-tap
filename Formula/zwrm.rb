class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.27/zwrm-darwin-arm64"
      sha256 "34f5619b94a0aff10f072a209b510af391953ad96ab76dd54353124987fa0935"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.27/zwrm-darwin-amd64"
      sha256 "e9a41394fbe44a3e5aa4e20e41030e0a217eb7a589829153da2daf7529d46dfd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.27/zwrm-linux-arm64"
      sha256 "6d241f39d882ac631057058b7e75e28f3e6703f0a868071146b387de3d855eda"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.27/zwrm-linux-amd64"
      sha256 "4e48e7b4b8ec5587cc221b9090ad341fe7120809e51270607e963a3c4cdad6d0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
