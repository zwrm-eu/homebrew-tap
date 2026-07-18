class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.44/zwrm-darwin-arm64"
      sha256 "8f682be70fd1b886cc5a6636491c840c73f82774534149e08c250f5f8dcbffb9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.44/zwrm-darwin-amd64"
      sha256 "c6a6fe56d5373a7c66c25c987efbc2ab531481664412c3b995bc4463df4cc827"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.44/zwrm-linux-arm64"
      sha256 "516370a16a292775e0c4cc4ac081d1c144ed6a98dcd47c789570054f3bdced13"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.44/zwrm-linux-amd64"
      sha256 "2a1053afb8ee0066cae2784b4134e4e72880406552256814a301a52d0e03b267"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
