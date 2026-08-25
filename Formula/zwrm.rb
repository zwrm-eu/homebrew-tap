class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.2/zwrm-darwin-arm64"
      sha256 "d3b76bf4c7edde1f7384b7c7136ec646db84cb3d64f5fcfef4353505fe68eca2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.2/zwrm-darwin-amd64"
      sha256 "94a17ea2b9a1ec71e81744ff77e10e64acf8c24efc147c7d855d97f9df4b4e49"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.2/zwrm-linux-arm64"
      sha256 "7cfa972712993cd42b14392f3796601ef914ed50495068f586d7bbc59f420558"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.2/zwrm-linux-amd64"
      sha256 "bd157a3f7e3e6b392480b5b5e12785159d71154710619f63a28afff6de056b35"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
