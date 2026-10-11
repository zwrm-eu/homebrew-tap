class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.15/zwrm-darwin-arm64"
      sha256 "3b492e9e1de59b3818e120886f4d9f35c05028ffd2c51c5a1986ec53d5b75838"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.15/zwrm-darwin-amd64"
      sha256 "3a9d3584c38a67be2b17274509c2dc617742f4752f13b4787ce06b0a07e827ae"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.15/zwrm-linux-arm64"
      sha256 "43ba05115967a37c1b34d75fe31270615af00e0be3afe27601d928f339361c6c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.15/zwrm-linux-amd64"
      sha256 "b88de0e48d2e5de38e3b185546c22efd26cfe4b7a16a12712620be88fe089bd9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
