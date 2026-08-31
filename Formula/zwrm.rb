class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.18/zwrm-darwin-arm64"
      sha256 "feb00ab86ff329566dae9f4dc93a1ffab905587a798a34f44343b3bc4cbb1b70"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.18/zwrm-darwin-amd64"
      sha256 "edeac498d3ba750d767e79f954f0cf14a0c7b46c7163975ea78a95238ff80b1a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.18/zwrm-linux-arm64"
      sha256 "befb0bb59a01f25b165861659af4aaa70710f092c029afddd6a18be5fdd3b5b7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.18/zwrm-linux-amd64"
      sha256 "1cae472f1dc4e0dbed3f2f09840d79046c8deb51a9b234fbb70a1bf3c22fbe40"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
