class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.4/zwrm-darwin-arm64"
      sha256 "66afd3479aecc6ff53a4b2031df5b7c6e20d48207c95f3535b2ca77b8911f58d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.4/zwrm-darwin-amd64"
      sha256 "9b77e58d08af6e2d05420e5b3ed7aa5f68853fa6dff6436177961f51d4ece0e3"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.4/zwrm-linux-arm64"
      sha256 "d811b992950f5ed587d3f25aa8ac2563b8d0c11b2982c65be61d897c243fe0f9"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.4/zwrm-linux-amd64"
      sha256 "14b7c1566d5f9e3e6cea2d63b5b7643b99b8106dc12a8a97edf3c7f4cdd6903d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
