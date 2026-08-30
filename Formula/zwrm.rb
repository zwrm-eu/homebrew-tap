class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.13/zwrm-darwin-arm64"
      sha256 "f11f908383867884aebbd0846eee04dc5cf0417500496883f5d0c9f5e4003dda"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.13/zwrm-darwin-amd64"
      sha256 "ce91c9370a1f5b7987f462da18af61ff27e962119592ef173beedea649c5398d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.13/zwrm-linux-arm64"
      sha256 "d35a2fa5f0a251dbe2ce69652921823e96d0803b0715839c542707453c2c2e08"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.13/zwrm-linux-amd64"
      sha256 "58d2c341afcd9d9f49d3fa822970dd4b98410f98bb5bad26c1335a266417a5ab"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
