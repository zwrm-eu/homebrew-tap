class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.36/zwrm-darwin-arm64"
      sha256 "9ed21a55cbcd5e658fc3db04a4f3c0b4f7b555a52d6c94766fe458f169f86012"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.36/zwrm-darwin-amd64"
      sha256 "35da6b8dd4080375c026dcead33aed6b647b3bb9a4dcea8b34a49a3c4c456ab6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.36/zwrm-linux-arm64"
      sha256 "a86de4bca66db3ead0c3007444fb284818f152786dd17461ede14658ef2327e6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.36/zwrm-linux-amd64"
      sha256 "7dccce4c349d00c23588e0bf7cbb261bb3357d7dd76e44fbede89fe47200349b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
