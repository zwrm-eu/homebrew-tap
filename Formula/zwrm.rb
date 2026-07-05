class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.7/zwrm-darwin-arm64"
      sha256 "a8257446141fb843589b77b2651695a03e92284d36500f6fb478400cb0987b32"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.7/zwrm-darwin-amd64"
      sha256 "3fd2db29833b7344899a3df0430c2905f911203f543bf2bf0a83717ed7670f0b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.7/zwrm-linux-arm64"
      sha256 "aaabe64b0010f6e313e676a9c1374759103e30e4e8bc9ab80ff8eb83eb3c83f3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.7/zwrm-linux-amd64"
      sha256 "0397785889734fb41e96a1f03e833cf9b78848ebac815ba89f1518e6595bf4de"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
