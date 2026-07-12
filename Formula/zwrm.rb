class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.25/zwrm-darwin-arm64"
      sha256 "0d9e006913126e7104d6d21e6bbe9f57406b797f7058314adf38ab43505dbc7a"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.25/zwrm-darwin-amd64"
      sha256 "74965d24eac44af8f30374a101994b6956b033074ef1e3b5d471a01230fdb5a4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.25/zwrm-linux-arm64"
      sha256 "6d2b281ee67e25794e48075a6a4b2156737eaa7e1087de055c2d943519fce911"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.25/zwrm-linux-amd64"
      sha256 "e49281689a67b8cde70bc41869cab8d6f4913f6a08d7323d0c475195c56b027b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
