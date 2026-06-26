class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.9/zwrm-darwin-arm64"
      sha256 "02db4acac08f2b4c829b3f30690473820414793b5d32ec15c8a2cdeb571edec3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.9/zwrm-darwin-amd64"
      sha256 "15d6841626ad7cf19f3a4ca9665477a03c016829883447b48fe3e62f72d3c3cd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.9/zwrm-linux-arm64"
      sha256 "2745c232170d046fb3f2cb7880a076bd24309fc4d88f7c2ae0f48ac180c1d038"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.9/zwrm-linux-amd64"
      sha256 "cc000f03d8a8333321fd503470d9c46f863c970b6afa07d047b6a8475acb3237"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
