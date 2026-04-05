class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.4/zwrm-darwin-arm64"
      sha256 "5fd0e913d4c45901fa63b96439502f19396a0f9d1b07b5327953c9fab28c9980"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.4/zwrm-darwin-amd64"
      sha256 "64d6c77857336eef467c813e5acfe46dbc5c66a4fe556185a5f1b8eea08dec5f"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.7.4/zwrm-linux-arm64"
      sha256 "72672d5cf5d9a909d3017ca3df9c6f28c2e68f4686c04ec2071de1de452c3854"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.7.4/zwrm-linux-amd64"
      sha256 "f0fd7e8265162d0c44e74b78595f6cb8d7aa86a8805b3b6762b64421efa244c0"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
