class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.9/zwrm-darwin-arm64"
      sha256 "748ec5743d2286b4f170eaa1c30565c7ac9772324f8d5acfcfc9af83309eff5a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.9/zwrm-darwin-amd64"
      sha256 "faae593ed5589ccaad8ee846cd3ff4e10350d9bd77a8c1054e2f4a6e4355df43"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.9/zwrm-linux-arm64"
      sha256 "fc04752edafaf07f094e9c140cd50563009adccae9d15309070bcc9841f57b99"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.9/zwrm-linux-amd64"
      sha256 "e343bb4785a7e3a7fce761cd6f2d8c6c10964a2d9a0548ef5afa657c3e9d44ec"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
