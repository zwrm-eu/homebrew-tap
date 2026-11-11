class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.48/zwrm-darwin-arm64"
      sha256 "b0dc82c12273daff512547dc308c0d6287112f746df61f0c486d8a3e4ee5d61a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.48/zwrm-darwin-amd64"
      sha256 "2e39d251e619068ceb4238b14b29afd81c9af9ace407dce0014d453928506d29"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.48/zwrm-linux-arm64"
      sha256 "7d25340ba0254ff78176cd88802192ed30b91c8479c65b8948522ce352758197"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.48/zwrm-linux-amd64"
      sha256 "b182b4ab42414464d4a0c524efca66c617d072c3abf209e5e5faa311d9544584"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
