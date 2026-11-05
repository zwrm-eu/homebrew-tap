class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.30/zwrm-darwin-arm64"
      sha256 "03e9fab20a5a7c55d65db9df73325962ec6518df4b42ff7bfd9d468b594195a8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.30/zwrm-darwin-amd64"
      sha256 "499a4dba0d992f39384c60a028031a88b729d669b5758b6aaa3681d716214866"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.30/zwrm-linux-arm64"
      sha256 "b4b06ac619c4e0f0076c89f3ae9130ee72e7417754db5941a2b277b643590923"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.30/zwrm-linux-amd64"
      sha256 "501215ef37fdc37cceab625a6ac1666968a3f63ff33bae3b64ae7dc2f6e27ae6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
