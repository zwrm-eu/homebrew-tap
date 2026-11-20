class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.13/zwrm-darwin-arm64"
      sha256 "3d4c8648236081f9449c040060f95835c5b8e54fb0c3489f1ab5e5a1d4c77485"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.13/zwrm-darwin-amd64"
      sha256 "dc4943b76ae4eaed7e5ddff48a523985ea3acce446c4cf593af65df479e65f0b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.13/zwrm-linux-arm64"
      sha256 "2bf6349e62c94959648d7b0e445a57582fd4d1a56b794fe5a804d88ed6e8a8ef"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.13/zwrm-linux-amd64"
      sha256 "bb0bec5c5bbadc37e43c1dac9eea3a65bcea03fe346b12c70efb42c5fbd69330"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
