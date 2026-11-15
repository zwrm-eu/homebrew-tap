class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.52/zwrm-darwin-arm64"
      sha256 "374305a6e457c8bf7de5ccf4f1f992d2f936e799ee7cdcfe8f05391ae9a20e73"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.52/zwrm-darwin-amd64"
      sha256 "f04dd4ab28ff60ac0a400ab17ecc54d7104e2ea4626b36bb7ddd3c2b114028fc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.52/zwrm-linux-arm64"
      sha256 "0ae79ffeee408dab15c641f8fb9cc18530402b930a785d23d80de848b218d9db"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.52/zwrm-linux-amd64"
      sha256 "0f1e294fdd418c10da6d53159052e1e7155f825b407069295bc4e5777f9d1fd2"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
