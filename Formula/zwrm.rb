class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.46/zwrm-darwin-arm64"
      sha256 "8012b12140f8447927c9ca422f8ce30af35938609fdb55798e70fe60bb65b3b3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.46/zwrm-darwin-amd64"
      sha256 "244163fa942a17cb75695afb2e26c371f822231aea6aa609def986dbfceeb13f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.46/zwrm-linux-arm64"
      sha256 "8eb4d7615a007ad45f7cebf5a49c12c0c32b0d9d5237ab9158f9b5d42b405e8b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.46/zwrm-linux-amd64"
      sha256 "6096482315991e674ea696a56f448abcb57fefa0a84a311a61b5063ed0542c34"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
