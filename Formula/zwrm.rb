class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.3/zwrm-darwin-arm64"
      sha256 "c24d96cb52fd792c2cc15f272bef3bdf59b4f712e3a1acb5b3b4100c45b1f1f9"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.3/zwrm-darwin-amd64"
      sha256 "b7772b31d852b4cb4586b96b3c769e44bfe4d07b95cc6099dfa07cff0d552f7a"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.3/zwrm-linux-arm64"
      sha256 "1beabf68a663c70e6f0acd57c866d3a1c06fceeaf6db59a3ca1b8cf0de4566eb"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.3/zwrm-linux-amd64"
      sha256 "55a783e52774496c190ac0d6a01d1441fc84671dc293e45459e17490fd601b67"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
