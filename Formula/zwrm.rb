class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.26/zwrm-darwin-arm64"
      sha256 "d39fe9bc0cfae696606adaa8af09f518a37797e6830d58e1a219177e569149f9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.26/zwrm-darwin-amd64"
      sha256 "7883d7b32eaac5f44256b8f1e430044de86108b5ae01c6d40e4492cc46ac6b0a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.26/zwrm-linux-arm64"
      sha256 "47f1954ebf13bc2ccf84a7625021bc1a62c25ea2bf5e9dcd0c93a53624441fce"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.26/zwrm-linux-amd64"
      sha256 "345518daee68aec182873a4d3fff6a5b32075693dd42e9605862509811f2b635"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
