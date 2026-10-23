class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.11/zwrm-darwin-arm64"
      sha256 "1bbc12a52709dbb9a26462acf25e0dc46821dfc63f2eb4ef89d0d9fbdd014c47"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.11/zwrm-darwin-amd64"
      sha256 "5ee9f322f28065bd7b53c69e545adf9b6626979a65551a62b45ec1a34c1166f0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.11/zwrm-linux-arm64"
      sha256 "87d1efb7673ab351accede540beedbdd88bfefab35d9663dd10efe59fdb4d66a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.11/zwrm-linux-amd64"
      sha256 "7e4d82fd441eddf06e222a180ea0323a00cebf19f33837863cb2716dd6b2d5c3"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
