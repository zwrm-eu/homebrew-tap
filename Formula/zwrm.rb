class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.7/zwrm-darwin-arm64"
      sha256 "d5b167d3428796b915ade7da36b5f818aa4ca91926df242cf7b293da759d6ae6"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.7/zwrm-darwin-amd64"
      sha256 "8b98e22b7df50f31da55bd770d5a2efe19e262138ec7bfef6cfa79ff69b0a863"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.7/zwrm-linux-arm64"
      sha256 "9a53fe15b42272a01d35b235953ac337b7465c0777c5180f7d61ca258c656fc0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.7/zwrm-linux-amd64"
      sha256 "33bfa68eccd5111885b8f65f91cfe962a32206e0fb52eb0a027ca483e10aa951"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
