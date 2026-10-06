class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.3/zwrm-darwin-arm64"
      sha256 "f6c48833f3a71e478466d329bb8296528579e910c93a09cc0cb223b630389ae5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.3/zwrm-darwin-amd64"
      sha256 "825c0982d4c9934eafc19facf64005766cef706776f141b8917bc2780f013496"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.3/zwrm-linux-arm64"
      sha256 "cd3463c302ea9ef43b8a80e1892f6a283da79ff3b3b26129a77d6f5cc64a508c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.3/zwrm-linux-amd64"
      sha256 "ed3f9d99cb7d47b91503ee6ecb0745546a2300bd6d083d3da8c18a01887c2c39"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
