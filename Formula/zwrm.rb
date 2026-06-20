class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.7/zwrm-darwin-arm64"
      sha256 "c770eaeae637ca581a0704ef4978038c569abbdc8a1ad5e1bbed85d044b4cb69"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.7/zwrm-darwin-amd64"
      sha256 "eed26225940c0f53440657fded05d79e029b2ec5afdda978b571f626e1829de8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.7/zwrm-linux-arm64"
      sha256 "f992473a421e4e7a4ea4cd89f9ba910e1d627ce9101fa9486cdf9f6aaad00daf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.7/zwrm-linux-amd64"
      sha256 "3fc98f9fe19ad7f5d929886247c92a9d020bfde32b8ccb3dd15fe7199ba03b73"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
