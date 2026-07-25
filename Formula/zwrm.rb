class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.0/zwrm-darwin-arm64"
      sha256 "ad03c6c5f78d5b001c1a817f4ebf2d3f89d469ef2bc2bfddc247fdb90d2b8148"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.0/zwrm-darwin-amd64"
      sha256 "e19c19a0ed554bbe924a325e4e4db9f758e96d9dd5e0f23db8f76b26a82d68a7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.17.0/zwrm-linux-arm64"
      sha256 "a7ebff85253fe141a0c09d680eb1f922541532ef5fa0d4ee924eec3e23044487"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.17.0/zwrm-linux-amd64"
      sha256 "2066f0df8892fb072e10fc9b8ccec146ee31ae4dfed909f1cfe043d148a4694a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
