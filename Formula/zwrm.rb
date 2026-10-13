class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.33.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.33.1/zwrm-darwin-arm64"
      sha256 "4fa119b1797eee968c900dd06a412d1e81baeea70a6cf92720fc269ac4315f63"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.33.1/zwrm-darwin-amd64"
      sha256 "fa542097025fb0b4b4553d0938828c4c7ea5504b2162524cac026d0eb046d364"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.33.1/zwrm-linux-arm64"
      sha256 "d040b2f0b4237d72d56d6ee0173aae5e732e902ac37e7009198884c1d3feff80"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.33.1/zwrm-linux-amd64"
      sha256 "f5d81380ae0011ef0ee55049fe2753a1a8645861035484f9eefa02a98fe97c83"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
