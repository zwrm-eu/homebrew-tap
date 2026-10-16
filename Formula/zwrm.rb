class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.7/zwrm-darwin-arm64"
      sha256 "22cff82468fe6f5a7e3c8dedd6c48417162ad0f337871989005b9cb5f88c5280"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.7/zwrm-darwin-amd64"
      sha256 "0f1e05a62050c6002f57c16aa1ce81c4275879bd84fdb60b3610a6fbd03f7292"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.7/zwrm-linux-arm64"
      sha256 "9d681ed959da28071509523e5fea6c7a42b24bd68d8735f0145426f5a555c07c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.7/zwrm-linux-amd64"
      sha256 "2548b884af19d3e8af9d0386249e6f771acc2d3bd952490b1f53777083e54910"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
