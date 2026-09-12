class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.6/zwrm-darwin-arm64"
      sha256 "b69056c8f795a3bfa985f0a11d1cea3966a9994fce60897c9b6d2a68d256d666"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.6/zwrm-darwin-amd64"
      sha256 "f901d0986e8422aa92686a81d9e621794c53b6f73590c754b7ba5a7adc3f7752"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.6/zwrm-linux-arm64"
      sha256 "f475ddd2bbc4467a7831143f346cdfb14bbbbb5cf40432b554e31f34f3303ea6"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.6/zwrm-linux-amd64"
      sha256 "5c5d30e2c1e352a34cae380182e9b58d3037bba5b3020070757bf5a1747e289a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
