class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.27/zwrm-darwin-arm64"
      sha256 "ed304a0835b2cc01b83485f670c06ab8ad0f7fac4e7460c7535afb16a38dcc8d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.27/zwrm-darwin-amd64"
      sha256 "361633b894e7ccc9de23e3d08f373e42ea505d01feb53f5396562c005baf7467"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.27/zwrm-linux-arm64"
      sha256 "99808784104ec3a5ce3046490787b0ec9c65250fa391891e1ccbf44bc18b3d3b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.27/zwrm-linux-amd64"
      sha256 "7e5eba03dd0aafb5cb1f16cc8be00a7ac7a7a14032ace178e3e9420adfc843a7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
