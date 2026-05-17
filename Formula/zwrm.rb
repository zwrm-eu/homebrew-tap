class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.0/zwrm-darwin-arm64"
      sha256 "c422cc204501006835ca85f0a936cf3fca3d9a68f0379630e2da5f3310992e1b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.0/zwrm-darwin-amd64"
      sha256 "fee91b3bf71973c0c1145a1f2fc527f14708bd2f1c891804ef0d7924786f1b4d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.0/zwrm-linux-arm64"
      sha256 "663cf2273c680d86b6d7bad0483df6d92cc7c2944465211f9d618d4d466cc25a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.0/zwrm-linux-amd64"
      sha256 "492d5f5217fdf1bb92135ed6552981c296bdf0bc1e2bcaa64ba27a0bd6d367ba"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
