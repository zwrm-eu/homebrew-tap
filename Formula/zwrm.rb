class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.42/zwrm-darwin-arm64"
      sha256 "244981bf10742751dd46baa5bec44813b5d9f27316da04117e9c43c9e182a424"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.42/zwrm-darwin-amd64"
      sha256 "950c5aa9bef9cb6e51c61d6eec67bdbb0207008b1c06b468dae1e7bde9d57a94"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.42/zwrm-linux-arm64"
      sha256 "2aed6237ac0f8ec0cb91408296dfd514f4ddf62a8d0b1b6286cce4a67c7f143b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.42/zwrm-linux-amd64"
      sha256 "9caca4a5255059d6185ea7e03372673772db6926def4058d51dc995e12c6738a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
