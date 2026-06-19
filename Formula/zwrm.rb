class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.4/zwrm-darwin-arm64"
      sha256 "eeac04de77278efa1bb4aadaf9f6e765e8627dcb95bcacb86f91e48e505d912a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.4/zwrm-darwin-amd64"
      sha256 "5f86b06ff51c47386b049176702d83163562c9527d8c61bc64e4882d12a0df3f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.4/zwrm-linux-arm64"
      sha256 "c1b55bf4640938992638e7cb66841be148dc0fa7fbe83f0c5e005e9588e92bb5"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.4/zwrm-linux-amd64"
      sha256 "f0893b0e36cedc6487b3c4482b50248615ef8fa1fe65034e5c087d8d2d872b3b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
