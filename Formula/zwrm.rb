class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.37.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.1/zwrm-darwin-arm64"
      sha256 "94f417541513816aeeb2838e5ae9c792389c5cc6da8cc8ebb0b8a2cbc49b5120"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.1/zwrm-darwin-amd64"
      sha256 "1f08f92a66f5fde98a382742a18b127e5ce6fd25e43c5fc1f1d9d150d497066e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.1/zwrm-linux-arm64"
      sha256 "02ab59c9c1b3f4d107771e5e42a841c41617171a22b54a2104f86bdaaa726dcd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.1/zwrm-linux-amd64"
      sha256 "9072186608117015a2a2f6695d153ba2718c4f4fabe38554d8ba7356732e44f6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
