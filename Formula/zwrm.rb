class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.26/zwrm-darwin-arm64"
      sha256 "502cff0fdcb1a74a4b7745732526a37d60e4447a197a858512d6f987426e0e4c"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.26/zwrm-darwin-amd64"
      sha256 "d0ba1804b98b88047eb527a5a50ee1f9ec727973a8a37258c7c72488f1c2ab38"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.26/zwrm-linux-arm64"
      sha256 "b37bf149e3b77cd7d5382cfaf55cf33646264ea62c7849e6e151b2d7b5431d20"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.26/zwrm-linux-amd64"
      sha256 "82071cb9fead6758ee76ab4473e1f5a44dc1701834540ced066b7ff7a1b57298"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
