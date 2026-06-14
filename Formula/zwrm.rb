class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.20/zwrm-darwin-arm64"
      sha256 "ec098cdb7223cfddda6521d7f73eec78cd2c2dd3a307efee92a53ef6da394e98"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.20/zwrm-darwin-amd64"
      sha256 "a5c0fa4404a40fa8d9d8b5838e3ede9fc841464dc8fd5b877ee71ab760a18e57"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.20/zwrm-linux-arm64"
      sha256 "8bdea9d3d6470b8e9417a10532a4e32d0f3d518e866d17e9c77285121ec75217"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.20/zwrm-linux-amd64"
      sha256 "9ad6f7b293810703c84b71b4f0dce7844f6fbd8aa5237b7d68874be714789b1c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
