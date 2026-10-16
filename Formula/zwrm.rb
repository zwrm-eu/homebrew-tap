class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.5/zwrm-darwin-arm64"
      sha256 "7b00301b939e4192b8cb3aa2508d115d98a15a3292c6e9e88b82945e30c3f156"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.5/zwrm-darwin-amd64"
      sha256 "7150c45ccc09aa0b132e44725ceeb0551c3d87bd2f6dded18082cdee4326e608"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.5/zwrm-linux-arm64"
      sha256 "96dc5af40fb41fd276a1dc12f36e43eab11c550e8df3772e5efc1a99ffadc910"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.5/zwrm-linux-amd64"
      sha256 "a0d01fbd878cf26ffe3782e8b7f2a725d895a706e724aa82627477ec5c178cd5"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
