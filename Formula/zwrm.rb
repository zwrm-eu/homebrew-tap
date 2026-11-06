class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.34/zwrm-darwin-arm64"
      sha256 "1abbff3b5d3859c76ece1dcd1662f0e637f80648085808067ca9d0f6cd770950"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.34/zwrm-darwin-amd64"
      sha256 "342e7207c25153f58266fee4a47c6e28cfe587c58a6fc9302360f97ef55454f2"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.34/zwrm-linux-arm64"
      sha256 "f1faae76522bdf2120b6179907fbd19df91c6efed680c86d1c0cfa49c100a03c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.34/zwrm-linux-amd64"
      sha256 "923a2072351e35e336bd7c8819d5b80848364d7234f18c4da6833f32cbfa1bfa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
