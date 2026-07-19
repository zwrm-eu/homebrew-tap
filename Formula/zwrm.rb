class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.45/zwrm-darwin-arm64"
      sha256 "3966965e2067d5ec49fcbcc06719b8c2e5eb477c6ddb0132929a3ef212d7f1d3"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.45/zwrm-darwin-amd64"
      sha256 "8e96be73a880f77226d8305fe7a4979c3cba08b3a870523b50171ea2e5a1a5ef"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.45/zwrm-linux-arm64"
      sha256 "fdf20950f2e4a7138d6716bcf098fe91365cba94644c2a32daaa8eeab6ad05f2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.45/zwrm-linux-amd64"
      sha256 "3f0a3f3f32555a6832c926b3cc592fdf9ad08f437cb3a3e72cab04f2ebda1977"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
