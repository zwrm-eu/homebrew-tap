class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.34/zwrm-darwin-arm64"
      sha256 "40f4a70eaf76a3f7b122c4265a67f8d76b99d21dbc396c3f4e8651663f62b691"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.34/zwrm-darwin-amd64"
      sha256 "f4ccdd4ce2f53cd368fc8c223c0dd339ffc3ca9c61b0addfb640b211fd0442a8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.34/zwrm-linux-arm64"
      sha256 "b2afbd9c0a07bdc3eaa8a3d713cb8b0254c88c123059da24dbb7b1fb9a98d4bf"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.34/zwrm-linux-amd64"
      sha256 "76e76734fce8a6caee5c5cee2bdd00bc20239be176a5c09e44d4631af645e806"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
