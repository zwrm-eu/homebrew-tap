class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.7/zwrm-darwin-arm64"
      sha256 "f420057419078065695e4793489586dff38c2596020b0f951be28d1cbdd5b8b8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.7/zwrm-darwin-amd64"
      sha256 "eb1fb178ce24ee96882344cb3e4b776ac505738a926cde0ec44411b749e64ed4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.7/zwrm-linux-arm64"
      sha256 "f1260f0d308ee42bf732f26980842ffc74d8c31e834cc048379cdc0f073c8059"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.7/zwrm-linux-amd64"
      sha256 "08553666643f3a8bdd3783150411b5a5c836a9d6448d1d9fc7ee95f5aca62985"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
