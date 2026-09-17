class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.6/zwrm-darwin-arm64"
      sha256 "2d551ec37117290b722410cc6b5e8e0c3038b5fe169eea5cae87c5dfc5e4a299"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.6/zwrm-darwin-amd64"
      sha256 "126043997abe131a65a436e0d4c04af404eb6187fd7ce2683f5f476951cea126"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.6/zwrm-linux-arm64"
      sha256 "ed233679458b258f268b4bfef216809b589972c2b0145bd4c08d99f2d55f3e1b"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.6/zwrm-linux-amd64"
      sha256 "b7de5eee3044f30bc6134d1370368c2c74952a6bac24144ec46248c0d46e5149"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
