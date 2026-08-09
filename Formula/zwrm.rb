class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.7/zwrm-darwin-arm64"
      sha256 "d53350913e661f10038c23c21a2844e85cf8f402375fce04c93b66b4f6e64c60"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.7/zwrm-darwin-amd64"
      sha256 "ddbd33ef77bb880429ab40e5aef551c0e165cf98e80df4a3219e06de92997540"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.7/zwrm-linux-arm64"
      sha256 "cae6b5f705474f9ad4dac168239c999ed0a99669df1c9342dae7e891e19a5364"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.7/zwrm-linux-amd64"
      sha256 "c36a51680c7091481adaed574a0e7eb236754a291eaab14a8b7bb4583a232eea"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
