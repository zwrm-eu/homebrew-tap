class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.27/zwrm-darwin-arm64"
      sha256 "42917d3b62eee010e38b241d57ef1bf57b41851be304aaa80f7031bfbc3f2798"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.27/zwrm-darwin-amd64"
      sha256 "deebbd6f4f7139a24b229cf5f2654bc2e78abcacbd618c8e24015c96201233d2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.27/zwrm-linux-arm64"
      sha256 "9a70d0629d830f1c5f0a16788c7b5d67c2a955c281fec0cf16a66ec9e0c68527"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.27/zwrm-linux-amd64"
      sha256 "e0056b27299c0cab94b58b809d91b19f0d1149e6f62b411c9688daeaefd961d7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
