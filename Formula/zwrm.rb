class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.33/zwrm-darwin-arm64"
      sha256 "ce1e7095cc8f223cbe0a7b7b0c0f63fb112f022182dd5284a9b40a8811835ad7"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.33/zwrm-darwin-amd64"
      sha256 "b3058bd62280f3096a36f8adf3047f2cb4af655b59340c3de7e98bbd61de6c4b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.33/zwrm-linux-arm64"
      sha256 "62cee36bb04f91c89c13b0ffe5c19d2b2c117f640d2d446e39ef16b0eaca2561"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.33/zwrm-linux-amd64"
      sha256 "3c532ddb9ba2635eedf702094a82eab27b1cd60155f0de0ebe9f8b3db89a7d30"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
