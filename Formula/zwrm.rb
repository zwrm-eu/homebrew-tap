class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.2/zwrm-darwin-arm64"
      sha256 "b2280551c8c55d247f08d86cacb7d12400d65265fbf93938bbb8454da97208c8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.2/zwrm-darwin-amd64"
      sha256 "81554676e697674f95498c610293aab9373e749488e88d77eaa366817a65f26b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.2/zwrm-linux-arm64"
      sha256 "873944442e9d7a54ceae10404065fedd91e7955806e7910c809f73a1b4afd627"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.2/zwrm-linux-amd64"
      sha256 "b1e04263aed0dc65dd83a1e500f608668719aa45e990941f1f553739a90cb675"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
