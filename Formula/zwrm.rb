class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.2/zwrm-darwin-arm64"
      sha256 "66e75c9df3e4295af0fcda7e99485142ba90c146188e668baea3a0f63977139d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.2/zwrm-darwin-amd64"
      sha256 "431f7e16eb25f39ec0e14ba278ea91055b8289e975c7d734c75789417c056377"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.2/zwrm-linux-arm64"
      sha256 "003ad509f03d7bb47e6ac4e60f1479b8cb32905777d44b846934c1366c9c68e6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.2/zwrm-linux-amd64"
      sha256 "9797d20c6fbbc9e8ada4387b76a9af6571016306e5c1ad84451f52d88c31510d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
