class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.10/zwrm-darwin-arm64"
      sha256 "2e601475e0957e0ea7e348ac374deb36379e9410160b4d6c79f4f0d92f892c4e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.10/zwrm-darwin-amd64"
      sha256 "67a0e60da2bd901911578da26c26f65905e382f7c74414acea4197774cdf10e9"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.10/zwrm-linux-arm64"
      sha256 "0518c869fe85e916a51e69929a2006884641c5ed892650cf90475a416a7d95d1"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.10/zwrm-linux-amd64"
      sha256 "ae71562fb52e0841c83c37b8710320ca97d58ade6c7bb085345f4cf07642fbbf"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
