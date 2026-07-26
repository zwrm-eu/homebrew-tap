class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.4/zwrm-darwin-arm64"
      sha256 "96fc4ac50374842b8a5bba6365d6364d235d1c31ae0e36acfdbe2d96938882bc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.4/zwrm-darwin-amd64"
      sha256 "9869d5f3965afac3911174c64b5e23c512123e884d71590dd65bbf8d6f146387"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.4/zwrm-linux-arm64"
      sha256 "3de61d1557eab2735b6d2e9ff788f315f0d5e389d43372c2f801b2f913ee05a1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.4/zwrm-linux-amd64"
      sha256 "cd6a925bc2c6061fcfba924250081755adec296918e46419d106a0f6452f4247"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
