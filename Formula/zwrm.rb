class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.0/zwrm-darwin-arm64"
      sha256 "49f75ff2a322cb526b1d7720132efc5c458d95ec0d36221ef19cfa576bb8eb81"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.0/zwrm-darwin-amd64"
      sha256 "8bacccbb0ffec08704e15d3041d0613c025d53dfe8ae127bc38a039eee5475dc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.0/zwrm-linux-arm64"
      sha256 "e82a97545f658b65ce6f06a6ef9a0859c3dac25753d860f255f7d78d9b63dcad"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.0/zwrm-linux-amd64"
      sha256 "e69751e81bdb220bd2b77dd9928d57c2796bd61c62f974c8204ee7d771118f5e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
