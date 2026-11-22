class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.19/zwrm-darwin-arm64"
      sha256 "649aa45bcc1e6e8e8ab8345a6276343da959dd4bbe0ded5d536121ed8cc99e2a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.19/zwrm-darwin-amd64"
      sha256 "9beb2b45871f0827915930b9dd13afe634349c68cb1cd92af63e559be7fb19e5"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.19/zwrm-linux-arm64"
      sha256 "68fc1fb7ddf19a72041af170bc3f4dce6395e258b0c2709b6496c1bd66244620"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.19/zwrm-linux-amd64"
      sha256 "8b6307adb3fe1c6ec5736928dde2f8a9a55498cc32ea3cc975cba2861aae2e3a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
