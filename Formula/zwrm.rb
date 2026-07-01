class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.1/zwrm-darwin-arm64"
      sha256 "b2528f90f27cf58613d1336ed3c177907307f4a76a24de79a50376af50c3d26e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.1/zwrm-darwin-amd64"
      sha256 "0e7681dc2e97e1cc81cde98586097efdb1dc56836161b3e082a8870e07a7c3e9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.14.1/zwrm-linux-arm64"
      sha256 "114e82910af7711d682697721537e2de9160d2d35a8bbd2a7a78546859744d60"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.14.1/zwrm-linux-amd64"
      sha256 "2b2e83d9e11496f82d563f1ede1b96fede400bd6a868876a8319ecc98fe8472a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
