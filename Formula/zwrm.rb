class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.3/zwrm-darwin-arm64"
      sha256 "1603b68316d4c89f7f251a504c87be4c1a674332308279e15816bb721fac49db"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.3/zwrm-darwin-amd64"
      sha256 "0a9b4e6f96450253cdfe6eec2563ed7dcc3429c7b05b7818907b0f76a824405c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.3/zwrm-linux-arm64"
      sha256 "14763fbf7fc322a89f8dfc66514c7b48123e339c93e5763baa7a9f5166b4a6c9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.3/zwrm-linux-amd64"
      sha256 "be4f32c2288397b6cfcda92e96a2a766765bdea9942997f4b1ed52be5a0e85b0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
