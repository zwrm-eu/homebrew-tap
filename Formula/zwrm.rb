class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.26/zwrm-darwin-arm64"
      sha256 "c8fa058d3b510d47511c640f7074cd34ee9c538b57e76c20c6051ae011f32256"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.26/zwrm-darwin-amd64"
      sha256 "aaca5e620ac479d627e88746363e8556892c500a9500c9093f8fea2087f8f691"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.26/zwrm-linux-arm64"
      sha256 "b45569a721e48d922b76de94de8f4342ace8bec0d88d7b6c74177edddd87be22"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.26/zwrm-linux-amd64"
      sha256 "3309cfc24e6f1f91005db759a4a1387fed6178a77ff5d4aff7cb63be1f4f30f1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
