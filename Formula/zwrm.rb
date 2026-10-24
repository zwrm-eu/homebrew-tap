class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.15/zwrm-darwin-arm64"
      sha256 "dddb2aed15c29d91374d096ddb84882761078f8953d78aa87a20e78d9d58a1f8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.15/zwrm-darwin-amd64"
      sha256 "afdf3c2b1da95e3659e9ad6fdae7aa1b9b75cfc35b7f8bac9a6c5b308cfe46a6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.15/zwrm-linux-arm64"
      sha256 "a413b1e53d6a58b2b79bdb9b5c6eebf1aa50fc3b2a58aa1e050f53c3b6a13df9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.15/zwrm-linux-amd64"
      sha256 "4bcaa18dd55f2f62fc1392044d2abbc5c6754f3371f31b641ad487dfa0b55ae8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
