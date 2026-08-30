class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.15/zwrm-darwin-arm64"
      sha256 "47b75b3103461bcaa83e98353c57fadffa61bfef916ab9c315305d1d04a116c5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.15/zwrm-darwin-amd64"
      sha256 "f54e72f6ddaadd0fb4bfe15e731cbbad88ae59cff1a8b2a1ad26968574d103ed"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.15/zwrm-linux-arm64"
      sha256 "2e55fdaaf657e1ea84e7f570e6a373bf5b5c1bb6c62d6676bc1db8e9f463c50e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.15/zwrm-linux-amd64"
      sha256 "a10afc2df68d3bd2590b3a773918e3be98df2a5f0d3ca623f157fb17480dd6a1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
