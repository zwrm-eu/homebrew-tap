class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.15/zwrm-darwin-arm64"
      sha256 "90bae4e9b21b9f42fa7647a233847899844b16adfd8fbf94c5155f499d74c086"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.15/zwrm-darwin-amd64"
      sha256 "993955fb74f6b5bcace7dc4a355dc19b73c8fab00d05012ba673305abcecfdee"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.15/zwrm-linux-arm64"
      sha256 "8320d8faf3f8479417797f092135f0154f6d849b87efbdc24bf57f96487e6a7a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.15/zwrm-linux-amd64"
      sha256 "982b6a1255345431ec7324480c5812a4ecba0a1d31279fa2aef9cb1b57c778bd"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
