class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.10/zwrm-darwin-arm64"
      sha256 "4f7b2a0f8c03b1236c090ecdde8784adb61433dd49bb691c175f13f67ef07aef"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.10/zwrm-darwin-amd64"
      sha256 "56335dd2cc659199e4f15d4feec68ec2d445395fcd858f3fa7912708d3b15a67"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.10/zwrm-linux-arm64"
      sha256 "2a1d44035f58faeab4f05fd6b6cb0c8f181347bf090aceaaf95b92491fdcfec7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.10/zwrm-linux-amd64"
      sha256 "c6f003e1a765297bb8423a2545e0485355ca3db5ed8dcb2457c50782e200add5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
