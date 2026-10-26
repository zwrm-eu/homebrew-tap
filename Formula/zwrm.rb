class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.22/zwrm-darwin-arm64"
      sha256 "6e31330de90742cf54c7d68a40f8d640a2d61d1262dd80c2880d294e2efb7220"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.22/zwrm-darwin-amd64"
      sha256 "df0010cb6232b2d7f4b0e991e1733f4bb2dddf6f4c0c54ff2bff0caf9ef2906e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.22/zwrm-linux-arm64"
      sha256 "0e830bd51eca5a25f40f1eba3c3a60e773a2f93d18eee946906b9a34c434efbf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.22/zwrm-linux-amd64"
      sha256 "7ed6d099663ef61e0bb432aec52d3bd287f8408e3338e2508e0f727d65a64e4a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
