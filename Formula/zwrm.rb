class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.3/zwrm-darwin-arm64"
      sha256 "9ed7a7c4fbdf02d30a4ebfa86ae6b6fc793d193413c8e3038504cb0751498798"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.3/zwrm-darwin-amd64"
      sha256 "03ec9d237f1e536facde7d6511abfa521958fcacbc3ff2729588225beb8c8363"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.3/zwrm-linux-arm64"
      sha256 "7135c9bf11d9a04546aed6fb641bc58c3bf82ef2327d5e114bf80a7984b0cc6b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.3/zwrm-linux-amd64"
      sha256 "b31b095a2e4efaf295bc24d2bdc6eb42077e10dc55ed28bda6f89189862a3112"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
