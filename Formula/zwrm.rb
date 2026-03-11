class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.1/zwrm-darwin-arm64"
      sha256 "0d2b65c3a34c6c1df98fe956a2bb330b08ffccffb3b53ecb7b6bb8958968e2eb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.1/zwrm-darwin-amd64"
      sha256 "28ad1a7538c235f8e7e9156d9c2549e7207fb0eaf87adfcc02572fdc4c9fb3f5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.1/zwrm-linux-arm64"
      sha256 "0a8e76b6c6b56b201f69710de3c4368354c0a2d7272e4904c4b25286e80726e6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.1/zwrm-linux-amd64"
      sha256 "b1d5ca26e54f8c78f85c45113f7b6f8ccd06c60208c0b853d553f8e771a6adbf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
