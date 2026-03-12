class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.2/zwrm-darwin-arm64"
      sha256 "405c210f3cbb19a1fff72719465def097f5999bddbe92c1e4087929c81fe7fa0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.2/zwrm-darwin-amd64"
      sha256 "c32a12ac4c8c1b84e3fa05270209c8b70eb1dcebccb220fb462338adb5cfbf15"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.3.2/zwrm-linux-arm64"
      sha256 "7a72efbffb29890356d4ce7f427fd0beed92ba909f5e912a5252083d5e03a209"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.3.2/zwrm-linux-amd64"
      sha256 "f9a32717238fbd257ad48c530736c4c86233d049922a7bc206dae3fb9d8cbd7f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
