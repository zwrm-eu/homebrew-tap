class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.16/zwrm-darwin-arm64"
      sha256 "4af7af05dce53379235bb5d90411e3489c186460e0bf42edaa407c9a7ad40311"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.16/zwrm-darwin-amd64"
      sha256 "02914f2b4a60e3e8f3f340ad1e3b9a7da2a5741016953bbdccf66a55984b52a5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.16/zwrm-linux-arm64"
      sha256 "a5006f4949e41c4968e1ab068493275a86db06a4c24654d9f9c19ceb9e5bd96f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.16/zwrm-linux-amd64"
      sha256 "6663ddcbc47ac2f78709101a2af1e3ed63e7b5e30e24485f0da6ef850d3e7c75"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
