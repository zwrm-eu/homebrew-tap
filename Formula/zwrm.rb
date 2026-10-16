class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.6/zwrm-darwin-arm64"
      sha256 "6214924e27359687f24591c2c937a8823a78e01699f12b24715db04b8d2a7913"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.6/zwrm-darwin-amd64"
      sha256 "2fa79c49a9dba66db54655aa8ccebcd70637335e224a90b874c4b99e33295332"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.6/zwrm-linux-arm64"
      sha256 "4e406d774076980bedbeed84d6fea598f6acbe619ce58713aa235cfad7ee396d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.6/zwrm-linux-amd64"
      sha256 "ae43e480f27598dd4ccc3cdf858d27be66f0a32962b8fc71d10ebbf26c488daf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
