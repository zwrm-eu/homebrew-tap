class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.52/zwrm-darwin-arm64"
      sha256 "1c4bb95bf86d8b9109dea2ce049ab3ec8f78aeb7e212db2865c58900098db455"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.52/zwrm-darwin-amd64"
      sha256 "234a41e801d9c2b02a448f1d5c0ce5d05898a6956476a09f0ba6661cf6cc3b29"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.52/zwrm-linux-arm64"
      sha256 "07a992dd0eaf99c51a337ce623d4a8e526e98c7c216175a7c95a9d72dd28cc6b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.52/zwrm-linux-amd64"
      sha256 "7cf763974524241260e111adcd5a07f3a8fc4a47fb17f4bd23b4e37d4c80e72d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
