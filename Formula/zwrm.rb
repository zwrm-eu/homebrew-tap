class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.27/zwrm-darwin-arm64"
      sha256 "a50cbfad7dc0bc2d680ce41d5f68bad8138a2238910d813146bc3e7eb704ad9d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.27/zwrm-darwin-amd64"
      sha256 "368cdeff85d480dd056a112ac00a809a1a8cedc7eb9760c58ce58aae685041bf"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.27/zwrm-linux-arm64"
      sha256 "b247d18b9de3d466c8f8468e29ab4bdd3a8e17ed81c6de595cd94278b23b945f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.27/zwrm-linux-amd64"
      sha256 "8b71d0478324450a39d795b618e401b8532655cba8b2d92f32f207c5b7fdb6fa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
