class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.10/zwrm-darwin-arm64"
      sha256 "a78dff01d6789b93198fd5101397594c5decdf23c0057437520b6573702fbd33"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.10/zwrm-darwin-amd64"
      sha256 "80c4a960c8d5c19e66e20a7126610d41890dfb6429bf89a04bc9c5f4283f4b3e"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.10/zwrm-linux-arm64"
      sha256 "2d0afb7a9a00541260aa3d989cb2e56808c3ae4d13f82dc9e907b40022545180"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.10/zwrm-linux-amd64"
      sha256 "d87e842162b87feec1230a2f84a72b3dcedc3e17bc82b2db64f191499ba53bdc"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
