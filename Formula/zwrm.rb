class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.9/zwrm-darwin-arm64"
      sha256 "272b286edf78869022ba39204ad0315cc69dccd164fb7f37943def6c3c94cdf6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.9/zwrm-darwin-amd64"
      sha256 "fc1aeca7edd3f7ae7bbcab872b3e8fad47717f69e152d3f8b3c5a05bb5ee3579"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.9/zwrm-linux-arm64"
      sha256 "8849e98a21d65889f756e572b4841f05e22971113f5b93ff9b7e830d00401b01"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.9/zwrm-linux-amd64"
      sha256 "6e1bde609b0f27bf464a92984c31200bffefb90f4e598483efa0d5a5efc3035a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
