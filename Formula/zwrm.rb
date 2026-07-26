class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.6/zwrm-darwin-arm64"
      sha256 "3a488fd7e99b0581c015da5aaa49f32d77a52e275aea489dd4dfe1bb1a2a1eef"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.6/zwrm-darwin-amd64"
      sha256 "9350c3bc71b53a291fefd85946f2434c7bc8a65691287d3098a90b5ff4816028"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.6/zwrm-linux-arm64"
      sha256 "197e65d5aa5806fb002026af92a72ceae515a3b9bd800aa1654e02bbb2053481"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.6/zwrm-linux-amd64"
      sha256 "e4153cb654136730ac9e7eb14f5e06ba314b8af7c8e01a9a55671b958c6bb37e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
