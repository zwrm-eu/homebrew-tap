class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.10.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.5/zwrm-darwin-arm64"
      sha256 "6800afb96c2112fbf11895d37bf51778abea5260e05218ddc6b24e380ada4011"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.5/zwrm-darwin-amd64"
      sha256 "5005de0351dcae453fc9651efff055934faab138aff517eca20430d067cdd380"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.10.5/zwrm-linux-arm64"
      sha256 "ac61af1c3c95fa85eb71baba01e3089126d7c28a1d660f66431ff381b2e8199c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.10.5/zwrm-linux-amd64"
      sha256 "bb7bb962c9c75e3185881c0a0c6e2b6e612f593f6309b2f8cc450a0acfcc50e1"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
