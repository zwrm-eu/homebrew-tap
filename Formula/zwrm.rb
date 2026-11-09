class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.37/zwrm-darwin-arm64"
      sha256 "4bd8d228955716a60bc79ef7443481506fe23aa8331782bfa8130f52345eb1c3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.37/zwrm-darwin-amd64"
      sha256 "5b065b951f5e903111756ad56b792c79cafabb9a170297c664a62f54c5bb1e1c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.37/zwrm-linux-arm64"
      sha256 "7062fc1323d89bdc8738e7f9d65c1132a77ee91553d530da4ae9e1cd2538f0e3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.37/zwrm-linux-amd64"
      sha256 "003e6fa5876ea3033470ef54510a64d1827e9f1d507fb47f032c90df20a22f95"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
