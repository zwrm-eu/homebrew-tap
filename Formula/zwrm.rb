class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.7/zwrm-darwin-arm64"
      sha256 "0021f3fa9caf32376b5bc23d3c4ce3d5297626c4238da5a689c9cc04cd421f9a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.7/zwrm-darwin-amd64"
      sha256 "402383acbc79937efb8c94bbcb5455eabb580f2fb81836b031af8905830f5838"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.7/zwrm-linux-arm64"
      sha256 "24e6968ef7878555b9ed1cb244bbb77420f7c1d81b0a70aaeeb851a92abe2423"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.7/zwrm-linux-amd64"
      sha256 "647c1047a18a4c0b0237b2ebdcba051be3377d45037dd69c198f68c5b6e6f96c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
