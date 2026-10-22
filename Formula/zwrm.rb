class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.8/zwrm-darwin-arm64"
      sha256 "7fcae2b7ce6172836e82066cb67d55c734f39832d4455ff8d5ff86cafeedfd3b"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.8/zwrm-darwin-amd64"
      sha256 "cd2581ea605affdc3e85a43601362786618aab4d9775cb58a5b7472e894cbaec"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.8/zwrm-linux-arm64"
      sha256 "ecfc9e98c45bf8850550f51249372394d7cf7bb09e98c62334d2752cba186af4"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.8/zwrm-linux-amd64"
      sha256 "a7ae2acb3d21d8bc3df4ee88d2f5b4785cc6cc74bb98c1de153cf2b26cb63279"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
