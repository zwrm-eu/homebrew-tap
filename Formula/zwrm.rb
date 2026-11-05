class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.29/zwrm-darwin-arm64"
      sha256 "7ceb0df357d0f03cadbea220a0f81914bf7049500e6265fd41535d1064af41b0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.29/zwrm-darwin-amd64"
      sha256 "d3734a88486e26c013dbfbb546c6759da1eb3e706548c595ea60916e8e193b5a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.29/zwrm-linux-arm64"
      sha256 "beaf5be73d8d64b70e4ba90ec4e979055d6e0ec7763258d5ea4a009cc6ca432c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.29/zwrm-linux-amd64"
      sha256 "7629680fa2c3b065f954de10ec8733ce676aad5d55c36fed113f0512a5f66d85"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
