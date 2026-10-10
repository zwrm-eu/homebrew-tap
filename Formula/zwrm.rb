class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.14/zwrm-darwin-arm64"
      sha256 "cef784076fada0af813c81e96cd41046709c283d7de92e53a2bb1e2eba9b4477"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.14/zwrm-darwin-amd64"
      sha256 "c71679cd7faf8223867164f07339214303114a956850d76f201cb16f7628b85c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.14/zwrm-linux-arm64"
      sha256 "0daa3dbddb9249c998d075dd3d15707e88db64dd8638a80c090081f2dc58b6ea"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.14/zwrm-linux-amd64"
      sha256 "0b6ea3e24c17d53ffe33c13c0cd97b71ea067696b8344f750b2843a09eeae5d8"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
