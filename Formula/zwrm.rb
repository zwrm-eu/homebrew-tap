class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.18/zwrm-darwin-arm64"
      sha256 "cbbfa561f767a95a72cfaa1816e5db5d8120b1d633bfb9d7207e9a7bb131b7ee"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.18/zwrm-darwin-amd64"
      sha256 "c5d542dd440b448c55575d4bd068318e281ade19a11f842f81a29cd0504db58d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.18/zwrm-linux-arm64"
      sha256 "7805c230ddc4a34e93287911e01488d61c5795484da2cb7ad533ad08ce7465af"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.18/zwrm-linux-amd64"
      sha256 "2c16573dce6ba9e0637ec6725d5f2e81903fa649dafcec33be36ace6a29cbcea"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
