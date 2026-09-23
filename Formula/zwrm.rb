class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.10/zwrm-darwin-arm64"
      sha256 "e7ad6b098bf11a974d56dc5b5f6eda80b32dea4263ef251e903d1864eddaf570"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.10/zwrm-darwin-amd64"
      sha256 "7f334192d91cd752d8045845130bbdcc770afd2882926b7f6f9509e8ed9bfd25"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.10/zwrm-linux-arm64"
      sha256 "ef9f4b7923b158d754fc3ec633e9f129f25c0c5de93aa17ac1317950bda554d1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.10/zwrm-linux-amd64"
      sha256 "d6aa3c724ce8094e8df07d9f76fe3136b99ab640982a858cdcf5ef88e07cf024"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
