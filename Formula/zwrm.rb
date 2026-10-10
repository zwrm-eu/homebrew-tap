class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.10/zwrm-darwin-arm64"
      sha256 "0cc4fa31c059274cd02f5499a64bf338c65c1db6c5c3cfafdeea85e810a40cd2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.10/zwrm-darwin-amd64"
      sha256 "521accd131ab327d190497e7fd6f96cc8984dd58d4ebf0f71ed9a3e55ef3f22b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.10/zwrm-linux-arm64"
      sha256 "0546477d54c0d5f803ab62f8c15a5e158f3abc19f16566e0f38ec4b90cd5ec61"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.10/zwrm-linux-amd64"
      sha256 "9ddd4e04d9f598c0f5040881c30cf337258ee05274e718f6a64fcdd8e6b9ccf6"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
