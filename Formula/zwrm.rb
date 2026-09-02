class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.27.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-darwin-arm64"
      sha256 "9f7623dba4785f62ebe850ec8c5f5a92d850560631d8956f050e42a282fa3a56"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-darwin-amd64"
      sha256 "3e6af5e7cbed619d3e4797687fe8a24bef0718cb083fdd478b5a4741e92c7bf4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-linux-arm64"
      sha256 "6d903ea24fb3c5f474f87e93296214b81f4f822c789ec521f0bd2dbde569964e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.27.3/zwrm-linux-amd64"
      sha256 "30ff3653406fcce2ce0bd94e5d97ac62aecfe7f88d7794305990d521c840426e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
