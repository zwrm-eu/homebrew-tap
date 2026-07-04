class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.3/zwrm-darwin-arm64"
      sha256 "eaf94d7e5eab9ac08081cf468cd9083044f98c1ef73e109a17ddad0d9d4a3bba"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.3/zwrm-darwin-amd64"
      sha256 "70d37fb837d75acda63524f78387f90eb3660979c7dd133115aa358eb844d5ff"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.3/zwrm-linux-arm64"
      sha256 "40b2a4057c024e1b1d1fcc82fe076b1f46b0934d159e7adcfc88491069c1c811"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.3/zwrm-linux-amd64"
      sha256 "8abaf533662c8ca9bf01f338bde925dd27857fc2d2701d374b12206678461d78"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
