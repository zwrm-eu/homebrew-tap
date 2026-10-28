class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.1/zwrm-darwin-arm64"
      sha256 "01e55a5e60c29952a1ce01b1b00568ee384f1c6606df1aa34ec458bb3e8ef71b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.1/zwrm-darwin-amd64"
      sha256 "e728eb20a8e0178bd7883eff7e7fbabc8ca2464badbc9125e12417c857f20e53"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.1/zwrm-linux-arm64"
      sha256 "784f54e2788a1712f5dca75ee8248ae09937d914af05012b2f3c6e9af1ecd837"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.1/zwrm-linux-amd64"
      sha256 "3ce37799f7f927f6accd079a25fdf5ab35588212008e0efdbc18b4f559c835d6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
