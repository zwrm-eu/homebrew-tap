class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.22/zwrm-darwin-arm64"
      sha256 "0f84ec0e2ea8889690f5a8458fd04378b9099042ae7ac146e64f071036283f24"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.22/zwrm-darwin-amd64"
      sha256 "d6baa5078acd963ed846e2fbca72c2f4cb49083e25ac4e7e3516e68b7bcdb3e9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.22/zwrm-linux-arm64"
      sha256 "4fba6d861494d87ab415bb2a9d2b5ef92f43a5328fd7e3d643bfdc89c1596250"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.22/zwrm-linux-amd64"
      sha256 "0630d02d5a9bc5c54d5ec5020e5743232360540b72b124096f2a9ff8ab32f431"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
