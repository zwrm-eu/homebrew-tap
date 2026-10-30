class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.37.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.4/zwrm-darwin-arm64"
      sha256 "df8b320f0f0247b798795b34b0c2dfd51ca73d1f41ef4a023a3af54effb579ac"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.4/zwrm-darwin-amd64"
      sha256 "9ea417d1be5d154d47ca5e2f41ff5ee6b8131ed4da6536c9e84dd69be3a4b220"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.4/zwrm-linux-arm64"
      sha256 "dd372c75fe9ded2c0f49eab8e40e5955532623c9b07218cbbab162ac772206b7"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.4/zwrm-linux-amd64"
      sha256 "02a921483e184072d86a2fd6cb457c4f847f5f0779cbde2b502b402aa7c2230a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
