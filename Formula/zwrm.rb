class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.17/zwrm-darwin-arm64"
      sha256 "be2b2aac4e6ed8d3111e9673387a9a4702dcd1646bb748a01df82f64fe32bffa"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.17/zwrm-darwin-amd64"
      sha256 "249a81b5ddfbcd261b839f1dbb6008ee9ff43a9b5f8354fc147f3240c683ab39"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.17/zwrm-linux-arm64"
      sha256 "574ddf3197896fe90c18385e5652929333bb2dd3b5d09ba8b6846b22c2e4e585"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.17/zwrm-linux-amd64"
      sha256 "3f2008bdd971cd9cf34fca53332ba77505a251872c471f329fda657231ff3d44"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
