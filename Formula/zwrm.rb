class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.19/zwrm-darwin-arm64"
      sha256 "db10598307c3e5bb75da2341fabeb1e808fb018926e8420650e08fc74856fecb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.19/zwrm-darwin-amd64"
      sha256 "fa450be32e0c0d3bd936c8ac00085ff9b17e95721cfb9ae63418899adbe1bab0"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.19/zwrm-linux-arm64"
      sha256 "35e30a71dcedf5f20223420555d459b13529e24f1c8a7fe2787413be648eeee3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.19/zwrm-linux-amd64"
      sha256 "7fcd85dd2e4a550ffeb83f7874dc1058e06548b1f6ef534cd669132a57570619"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
