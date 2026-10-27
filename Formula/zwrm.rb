class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.28/zwrm-darwin-arm64"
      sha256 "a9ec9508572ad9406103ccf0c191baf4fdca77fd735ec66e0fef922e3a3b8da0"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.28/zwrm-darwin-amd64"
      sha256 "181fc05f72647469e7f1fdc46891b55c3d440dff191e8d04e43d0863f0c0b0d4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.28/zwrm-linux-arm64"
      sha256 "142a13fc5880f0fcd44dcdcc555354b585ebbd51087f6abeeeaf7f71ee4d308d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.28/zwrm-linux-amd64"
      sha256 "1db0a3fbac702a14288fb1668cfcd5bdd9238bd3761f450493c3d04a6faecdaf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
