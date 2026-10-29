class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.7/zwrm-darwin-arm64"
      sha256 "22e83f0bc214633f884dc9f6fe3cc54fa8afd68b7877953a97e42bd3943450e5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.7/zwrm-darwin-amd64"
      sha256 "d7694519d67d213463a279980f50c4388195a32ed362bfb654f4f605587b5bb6"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.7/zwrm-linux-arm64"
      sha256 "b77dc2d3554cda730cc7d2fbac68dc051bb991565d01c07f3d93d129a4562589"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.7/zwrm-linux-amd64"
      sha256 "61725f1f7eb746920c5751d63752d56d2e23cc3897f4a4fd92639bbce4b30e8e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
