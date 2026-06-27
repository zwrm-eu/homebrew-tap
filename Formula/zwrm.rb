class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.15/zwrm-darwin-arm64"
      sha256 "07264e786e4d87e98c9d0a8902dc34c6c2c7f000a6b60381967031c47a66b9f8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.15/zwrm-darwin-amd64"
      sha256 "a40000962527ebac9dd5947e60e0b47352e528939295e88d90c17824e772ef2f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.15/zwrm-linux-arm64"
      sha256 "07102eb58d5279114358d837fad71ba6f3c61239438562213e7d5e1fbe93c790"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.15/zwrm-linux-amd64"
      sha256 "cc3fa5a3ca4cbc37436493165738de088b1a254b7183ceb2844ed974b24318bc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
