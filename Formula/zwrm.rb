class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.13/zwrm-darwin-arm64"
      sha256 "3a5c78c8754b7dbac78732e62e24eedc71f2f5a39cd636225a03791244b8776b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.13/zwrm-darwin-amd64"
      sha256 "fc07bdf72ed55322a27a6d3866e15129ac37d2af1d811eed1e8293d41e597ecc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.13/zwrm-linux-arm64"
      sha256 "1f6d52d2070fa1bd8cfbc55273777bbd8d3c66f653cbe5cbfd28a8de21d40dfd"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.13/zwrm-linux-amd64"
      sha256 "99b16724610e18be745cb080b7069760af64685aa5fd06c2d9b372f0a28bdfcc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
